-- Sample products for local development.
-- Run after schema.sql. Safe to re-run: existing SKUs are updated, not duplicated.
-- Products with quantity < 5 show up in the MCP "low-stock-products" resource.
USE ecommerce_db;

INSERT INTO products (sku, name, description, price, quantity) VALUES
  ('ELEC-001', 'Wireless Bluetooth Headphones', 'Over-ear headphones with active noise cancellation and 30-hour battery life.', 89.99, 25),
  ('ELEC-002', 'USB-C Fast Charger 65W', 'Compact GaN charger that powers laptops, tablets and phones.', 34.50, 40),
  ('ELEC-003', 'Mechanical Keyboard', 'Tenkeyless keyboard with hot-swappable switches and RGB backlight.', 74.00, 3),
  ('ELEC-004', '27-inch 4K Monitor', 'IPS display with HDR10 support and USB-C input.', 329.00, 8),
  ('HOME-001', 'Stainless Steel Water Bottle', 'Insulated 750 ml bottle that keeps drinks cold for 24 hours.', 19.95, 60),
  ('HOME-002', 'Ceramic Coffee Mug Set', 'Set of four 350 ml mugs, dishwasher and microwave safe.', 24.99, 2),
  ('HOME-003', 'LED Desk Lamp', 'Dimmable lamp with three color temperatures and a USB charging port.', 29.90, 15),
  ('FASH-001', 'Classic Cotton T-Shirt', 'Unisex crew-neck t-shirt made from 100% organic cotton.', 14.99, 120),
  ('FASH-002', 'Leather Wallet', 'Slim bifold wallet with RFID blocking.', 39.00, 4),
  ('SPRT-001', 'Yoga Mat', 'Non-slip 6 mm mat with carrying strap.', 27.50, 30),
  ('SPRT-002', 'Adjustable Dumbbells (Pair)', 'Quick-adjust dumbbells from 2 to 24 kg each.', 249.00, 1),
  ('BOOK-001', 'TypeScript Handbook', 'Practical guide to building typed JavaScript applications.', 32.00, 18)
AS new
ON DUPLICATE KEY UPDATE
  name = new.name,
  description = new.description,
  price = new.price,
  quantity = new.quantity;
