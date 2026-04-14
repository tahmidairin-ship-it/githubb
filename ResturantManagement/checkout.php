<?php
session_start();
require_once 'includes/config.php';
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php?redirect=checkout.php");
    exit;
}

$user_id = $_SESSION['user_id'];
if (empty($_SESSION['cart'])) {
    header("Location: cart.php?error=empty");
    exit;
}
$total = 0;
foreach ($_SESSION['cart'] as $item) {
    $total += $item['price'] * $item['quantity'];
}
if (isset($_POST['place_order'])) {
    $stmt_order = $conn->prepare("INSERT INTO orders (user_id, total, status) VALUES (?, ?, 'Pending')");
    $stmt_order->bind_param("id", $user_id, $total);
    $stmt_order->execute();
    $order_id = $stmt_order->insert_id;

    $stmt_item = $conn->prepare("INSERT INTO order_items (order_id, food_id, quantity, price) VALUES (?, ?, ?, ?)");
    foreach ($_SESSION['cart'] as $item) {
        $stmt_item->bind_param("iiid", $order_id, $item['id'], $item['quantity'], $item['price']);
        $stmt_item->execute();
    }

    unset($_SESSION['cart']);
    header("Location: cart.php?success=1&order_id=$order_id");
    exit;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Checkout</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="min-h-screen bg-cover bg-center bg-no-repeat" style="background-image: url('https://images.unsplash.com/photo-1600891964599-f61ba0e24092?auto=format&fit=crop&w=1600&q=80');">
    <div class="bg-black bg-opacity-70 min-h-screen flex items-center justify-center">
        <div class="max-w-5xl w-full mx-auto bg-white bg-opacity-90 rounded-2xl shadow-2xl p-8">

            <h1 class="text-3xl font-bold text-center text-green-600 mb-6">🍽️ Checkout</h1>
            <h2 class="text-xl font-semibold mb-4 text-gray-800 text-center">Order Summary</h2>

            <div class="overflow-x-auto">
                <table class="min-w-full border border-gray-200 bg-white rounded-lg shadow-sm">
                    <thead class="bg-green-600 text-white">
                        <tr>
                            <th class="py-3 px-4 text-left">Image</th>
                            <th class="py-3 px-4 text-left">Dish Name</th>
                            <th class="py-3 px-4 text-center">Price</th>
                            <th class="py-3 px-4 text-center">Quantity</th>
                            <th class="py-3 px-4 text-center">Subtotal</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($_SESSION['cart'] as $item): ?>
                            <tr class="border-b hover:bg-green-50 transition">
                                <td class="py-3 px-4">
                                    <img src="<?= htmlspecialchars($item['image']); ?>" class="w-16 h-16 rounded-lg object-cover border" alt="Dish Image">
                                </td>
                                <td class="py-3 px-4 font-medium text-gray-800"><?= htmlspecialchars($item['name']); ?></td>
                                <td class="py-3 px-4 text-center text-gray-700">$<?= number_format($item['price'], 2); ?></td>
                                <td class="py-3 px-4 text-center text-gray-700"><?= $item['quantity']; ?></td>
                                <td class="py-3 px-4 text-center font-semibold text-green-700">$<?= number_format($item['price'] * $item['quantity'], 2); ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>

            <div class="flex flex-col md:flex-row justify-between items-center mt-8">
                <h3 class="text-2xl font-bold text-gray-800 mb-4 md:mb-0">Total: 
                    <span class="text-green-600">$<?= number_format($total, 2); ?></span>
                </h3>
                <form method="POST" action="checkout.php" class="flex space-x-3">
                    <a href="cart.php" class="px-5 py-2.5 bg-gray-500 text-white rounded-lg hover:bg-gray-600 transition">← Back to Cart</a>
                    <button type="submit" name="place_order" class="px-6 py-2.5 bg-green-600 text-white font-semibold rounded-lg shadow-lg hover:bg-green-700 transform hover:scale-105 transition">
                        ✅ Place Order
                    </button>
                </form>
            </div>

            <footer class="mt-10 text-center text-sm text-gray-500">
                © <?= date('Y'); ?> Void Restaurant. All Rights Reserved.
            </footer>

        </div>
    </div>
</body>
</html>
