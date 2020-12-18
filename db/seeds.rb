# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.create([
    { title: 'Scone', description: 'Golden on the top and buttery with a subtle sweetness. Baked to light and fluffy perfection. Enjoy with some jam and a generous spoonful of cream!', 
    price: 2.50, image_url: 'site/scone.jpg', category: 'Bakery', productType: 'Food', brand: 'Butterscotch' }, 
    { title: 'Cinnamon Swirl', description: 'Sticky and sweet, this classic cinnamon swirl recipe is perfect for an indulgent breakfast or brunch.', 
    price: 3.50, image_url: 'site/cinnamonSwirl.jpg', category: 'Bakery', productType: 'Food', brand: 'Butterscotch' }, 
    { title: 'Burren Meadow Soap', description: 'Cleanse, moisturise and soothe your skin with this all-natural handmade soap crafted from plant oils and butters, pure essential oils, herbs and spices.', 
    price: 8.50, image_url: 'site/moherSoap.jpg', category: 'Bathroom', productType: 'Gift', brand: 'The Moher Soap Co.' }, 
    { title: 'Set of Spice Bottles', description: 'This stylish spice jar set is ideal for storing and dispensing your dried herbs and spices.', 
    price: 8.50, image_url: 'site/setOfSpiceBottles.jpg', category: 'Kitchen', productType: 'Gift', brand: 'Radar' } 
    ])
    
Supplier.create([
    { name: 'Radar', email: 'info@radar.com' },
    { name: 'The Moher Soap Co.', email: 'info@mohersoap.com' }
    ])
    
Category.create([
    { title: 'Bakery', description: 'Join us for a freshly baked pastry and a wonderful cuppa.', image: 'site/scone.jpg'},
    { title: 'Kitchen', description: 'Kitchen items for cooking lovers.', image: 'site/setOfSpiceBottles.jpg'},
    { title: 'Bathroom', description: 'Environmentally friendly bathroom items. Perfect for a thoughtful gift.', image: 'site/moherSoap.jpg'}
    ])