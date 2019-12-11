const fodmap = [
  {
    "name": "Vegetables",
    "image": "https://images.vexels.com/media/users/3/143113/isolated/lists/162ac2ab01adacd7241b33ed57726fe4-eggplant-color-icon.png",
    "list": [
      {"aliment": "Garlic", "trigger": 1},
      {"aliment": "Garlic salt", "trigger": 1},
      {"aliment": "Garlic powder", "trigger": 1},
      {"aliment": "Onions", "trigger": 1},
      {"aliment": "Onion powder", "trigger": 1},
      {"aliment": "Small pickled onions", "trigger": 1},
      {"aliment": "Artichoke", "trigger": 1},
      {"aliment": "Asparagus", "trigger": 1},
      {"aliment": "Baked beans", "trigger": 1},
      {"aliment": "Beetroot, fresh", "trigger": 1},
      {"aliment": "Black eyed peas", "trigger": 1},
      {"aliment": "Broad beans", "trigger": 1},
      {"aliment": "Butter beans", "trigger": 1},
      {"aliment": "Cassava", "trigger": 1},
      {"aliment": "Cauliflower", "trigger": 1},
      {"aliment": "Celery – greater than 5cm of stalk", "trigger": 1},
      {"aliment": "Choko", "trigger": 1},
      {"aliment": "Falafel", "trigger": 1},
      {"aliment": "Fermented cabbage", "trigger": 1},
      {"aliment": "Sauerkraut", "trigger": 1},
      {"aliment": "Haricot beans", "trigger": 1},
      {"aliment": "Kidney beans", "trigger": 1},
      {"aliment": "Lima beans", "trigger": 1},
      {"aliment": "Leek bulb", "trigger": 1},
      {"aliment": "Mange Tout", "trigger": 1},
      {"aliment": "Mixed vegetables", "trigger": 1},
      {"aliment": "Mung beans", "trigger": 1},
      {"aliment": "Mushrooms", "trigger": 1},
      {"aliment": "Peas, sugar snap", "trigger": 1},
      {"aliment": "Pickled vegetables", "trigger": 1},
      {"aliment": "Red kidney beans", "trigger": 1},
      {"aliment": "Savoy Cabbage", "trigger": 1},
      {"aliment": "Soy beans", "trigger": 1},
      {"aliment": "Soya beans", "trigger": 1},
      {"aliment": "Split peas", "trigger": 1},
      {"aliment": "Scallions (bulb / white part)", "trigger": 1},
      {"aliment": "Spring onions (bulb / white part)", "trigger": 1},
      {"aliment": "Shallots", "trigger": 1},
      {"aliment": "Taro", "trigger": 1},
      {"aliment": "Alfalfa", "trigger": 0},
      {"aliment": "Bamboo shoots", "trigger": 0},
      {"aliment": "Bean sprouts", "trigger": 0},
      {"aliment": "Beetroot, canned and pickled", "trigger": 0},
      {"aliment": "Black beans – 1/4 cup / 45g", "trigger": 0},
      {"aliment": "Bok choy / pak choi", "trigger": 0},
      {"aliment": "Broccoli, whole – 1/2 cup", "trigger": 0},
      {"aliment": "Broccoli, heads only – 3/4 cup", "trigger": 0},
      {"aliment": "Broccoli, stalks only – 1/2 cup", "trigger": 0},
      {"aliment": "Broccolini, whole – 1/2 cup chopped", "trigger": 0},
      {"aliment": "Broccolini, heads only – 1/2 cup", "trigger": 0},
      {"aliment": "Broccolini, stalks only – 1 cup", "trigger": 0},
      {"aliment": "Brussels sprouts – 2 sprouts", "trigger": 0},
      {"aliment": "Butternut squash – 1/4 cup", "trigger": 0},
      {"aliment": "Cabbage, common and red up to 1 cup", "trigger": 0},
      {"aliment": "Callaloo", "trigger": 0},
      {"aliment": "Carrots", "trigger": 0},
      {"aliment": "Celeriac", "trigger": 0},
      {"aliment": "Celery – less than 5cm of stalk", "trigger": 0},
      {"aliment": "Chicory leaves", "trigger": 0},
      {"aliment": "Chick peas – 1/4 cup", "trigger": 0},
      {"aliment": "Chilli – if tolerable", "trigger": 0},
      {"aliment": "Chives", "trigger": 0},
      {"aliment": "Cho cho – 1/2 cup diced", "trigger": 0},
      {"aliment": "Choy sum", "trigger": 0},
      {"aliment": "Collard greens", "trigger": 0},
      {"aliment": "Corn – 1/2 cob", "trigger": 0},
      {"aliment": "Sweet corn – 1/2 cob", "trigger": 0},
      {"aliment": "Courgette", "trigger": 0},
      {"aliment": "Cucumber", "trigger": 0},
      {"aliment": "Eggplant", "trigger": 0},
      {"aliment": "Aubergine", "trigger": 0},
      {"aliment": "Fennel", "trigger": 0},
      {"aliment": "Green beans", "trigger": 0},
      {"aliment": "Green pepper", "trigger": 0},
      {"aliment": "Green bell pepper", "trigger": 0},
      {"aliment": "Green capsicum", "trigger": 0},
      {"aliment": "Ginger", "trigger": 0},
      {"aliment": "Kale", "trigger": 0},
      {"aliment": "Karela", "trigger": 0},
      {"aliment": "Leek leaves", "trigger": 0},
      {"aliment": "Lentils – in small amounts", "trigger": 0},
      {"aliment": "Butter lettuce", "trigger": 0},
      {"aliment": "Iceberg lettuce", "trigger": 0},
      {"aliment": "Radicchio lettuce", "trigger": 0},
      {"aliment": "Red coral lettuce", "trigger": 0},
      {"aliment": "Rocket lettuce", "trigger": 0},
      {"aliment": "Romaine/Cos lettuce", "trigger": 0},
      {"aliment": "Marrow", "trigger": 0},
      {"aliment": "Okra", "trigger": 0},
      {"aliment": "Olives", "trigger": 0},
      {"aliment": "Parsnip", "trigger": 0},
      {"aliment": "Peas, snow – 5 pods", "trigger": 0},
      {"aliment": "Pickled gherkins", "trigger": 0},
      {"aliment": "Pickled onions, large", "trigger": 0},
      {"aliment": "Potato", "trigger": 0},
      {"aliment": "Pumpkin", "trigger": 0},
      {"aliment": "Pumpkin, canned – 1/4 cup, 2.2 oz", "trigger": 0},
      {"aliment": "Radish", "trigger": 0},
      {"aliment": "Red peppers", "trigger": 0},
      {"aliment": "Red bell pepper", "trigger": 0},
      {"aliment": "Red capsicum", "trigger": 0},
      {"aliment": "Scallions (green part)", "trigger": 0},
      {"aliment": "Spring onions (green part)", "trigger": 0},
      {"aliment": "Seaweed", "trigger": 0},
      {"aliment": "Nori", "trigger": 0},
      {"aliment": "Silverbeet", "trigger": 0},
      {"aliment": "Chard", "trigger": 0},
      {"aliment": "Spaghetti squash", "trigger": 0},
      {"aliment": "Spinach, baby", "trigger": 0},
      {"aliment": "Squash", "trigger": 0},
      {"aliment": "Sun-dried tomatoes – 4 pieces", "trigger": 0},
      {"aliment": "Swede", "trigger": 0},
      {"aliment": "Swiss chard", "trigger": 0},
      {"aliment": "Sweet potato – 1/2 cup", "trigger": 0},
      {"aliment": "Tomato – canned, cherry, common, roma", "trigger": 0},
      {"aliment": "Tomatillos – canned", "trigger": 0},
      {"aliment": "Turnip", "trigger": 0},
      {"aliment": "Water chestnuts", "trigger": 0},
      {"aliment": "Yam", "trigger": 0},
      {"aliment": "Zucchini", "trigger": 0}
    ]
  },
  {
    "name": "Fruits",
    "image": "http://ekladata.com/ZO60FubiOncaGsbqz-Q27OjJPOY.png",
    "list": [
      {"aliment": "Apples", "trigger": 1},
      {"aliment": "Apricots", "trigger": 1},
      {"aliment": "Avocado", "trigger": 1},
      {"aliment": "Bananas, ripe", "trigger": 1},
      {"aliment": "Blackberries", "trigger": 1},
      {"aliment": "Blackcurrants", "trigger": 1},
      {"aliment": "Boysenberry", "trigger": 1},
      {"aliment": "Cherries", "trigger": 1},
      {"aliment": "Currants", "trigger": 1},
      {"aliment": "Custard apple", "trigger": 1},
      {"aliment": "Dates", "trigger": 1},
      {"aliment": "Feijoa", "trigger": 1},
      {"aliment": "Figs", "trigger": 1},
      {"aliment": "Goji berries", "trigger": 1},
      {"aliment": "Grapefruit", "trigger": 1},
      {"aliment": "Guava, unripe", "trigger": 1},
      {"aliment": "Lychee", "trigger": 1},
      {"aliment": "Mango", "trigger": 1},
      {"aliment": "Nectarines", "trigger": 1},
      {"aliment": "Paw paw, dried", "trigger": 1},
      {"aliment": "Peaches", "trigger": 1},
      {"aliment": "Pears", "trigger": 1},
      {"aliment": "Persimmon", "trigger": 1},
      {"aliment": "Pineapple, dried", "trigger": 1},
      {"aliment": "Plums", "trigger": 1},
      {"aliment": "Pomegranate", "trigger": 1},
      {"aliment": "Prunes", "trigger": 1},
      {"aliment": "Raisins", "trigger": 1},
      {"aliment": "Sea buckthorns", "trigger": 1},
      {"aliment": "Sultanas", "trigger": 1},
      {"aliment": "Tamarillo", "trigger": 1},
      {"aliment": "Watermelon", "trigger": 1},
      {"aliment": "Ackee", "trigger": 0},
      {"aliment": "Bananas, unripe", "trigger": 0},
      {"aliment": "Bilberries", "trigger": 0},
      {"aliment": "Blueberries", "trigger": 0},
      {"aliment": "Breadfruit", "trigger": 0},
      {"aliment": "Carambola", "trigger": 0},
      {"aliment": "Cantaloupe", "trigger": 0},
      {"aliment": "Cranberry – 1 tbsp", "trigger": 0},
      {"aliment": "Clementine", "trigger": 0},
      {"aliment": "Dragon fruit", "trigger": 0},
      {"aliment": "Lingonberries", "trigger": 0},
      {"aliment": "Grapes", "trigger": 0},
      {"aliment": "Guava, ripe", "trigger": 0},
      {"aliment": "Honeydew", "trigger": 0},
      {"aliment": "Galia melons", "trigger": 0},
      {"aliment": "Kiwifruit", "trigger": 0},
      {"aliment": "Lemon", "trigger": 0},
      {"aliment": "Lemon juice", "trigger": 0},
      {"aliment": "Lime", "trigger": 0},
      {"aliment": "Lime juice", "trigger": 0},
      {"aliment": "Mandarin", "trigger": 0},
      {"aliment": "Orange", "trigger": 0},
      {"aliment": "Passion fruit", "trigger": 0},
      {"aliment": "Paw paw", "trigger": 0},
      {"aliment": "Papaya", "trigger": 0},
      {"aliment": "Pineapple", "trigger": 0},
      {"aliment": "Plantain, peeled", "trigger": 0},
      {"aliment": "Prickly pear / nopales", "trigger": 0},
      {"aliment": "Raspberry", "trigger": 0},
      {"aliment": "Rhubarb", "trigger": 0},
      {"aliment": "Strawberry", "trigger": 0},
      {"aliment": "Tamarind", "trigger": 0},
      {"aliment": "Tangelo", "trigger": 0}
    ]
  },
  {
    "name": "Meat",
    "image": "https://freeiconshop.com/wp-content/uploads/edd/meat-outline-filled.png",
    "list": [
      {"aliment": "Chorizo", "trigger": 1},
      {"aliment": "Sausages", "trigger": 1},
      {"aliment": "Beef", "trigger": 0},
      {"aliment": "Chicken", "trigger": 0},
      {"aliment": "Foie gras", "trigger": 0},
      {"aliment": "Kangaroo", "trigger": 0},
      {"aliment": "Lamb", "trigger": 0},
      {"aliment": "Pork", "trigger": 0},
      {"aliment": "Prosciutto", "trigger": 0},
      {"aliment": "Quorn, mince", "trigger": 0},
      {"aliment": "Turkey", "trigger": 0},
      {"aliment": "Ham", "trigger": 0},
      {"aliment": "Processed meat – check ingredients", "trigger": 0}
    ]
  },
  {
    "name": "Fish",
    "image": "http://cshfishhatchery.org/wp-content/uploads/2015/09/icon5-min.png",
    "list": [
      {"aliment": "Canned tuna", "trigger": 0},
      {"aliment": "Cod", "trigger": 0},
      {"aliment": "Haddock", "trigger": 0},
      {"aliment": "Plaice", "trigger": 0},
      {"aliment": "Salmon", "trigger": 0},
      {"aliment": "Trout", "trigger": 0},
      {"aliment": "Tuna", "trigger": 0},
      {"aliment": "Crab", "trigger": 0},
      {"aliment": "Lobster", "trigger": 0},
      {"aliment": "Mussels", "trigger": 0},
      {"aliment": "Oysters", "trigger": 0},
      {"aliment": "Prawns", "trigger": 0},
      {"aliment": "Shrimp", "trigger": 0}
    ]
  },
  {
    "name": "Cereals",
    "image": "https://icon-library.net/images/icon-wheat/icon-wheat-21.jpg",
    "list": [
      {"aliment": "Biscuits", "trigger": 1},
      {"aliment": "Cookies", "trigger": 1},
      {"aliment": "Chocolate chip cookies", "trigger": 1},
      {"aliment": "Bread, wheat – over 1 slice", "trigger": 1},
      {"aliment": "Breadcrumbs", "trigger": 1},
      {"aliment": "Cakes", "trigger": 1},
      {"aliment": "Cereal bar, wheat based", "trigger": 1},
      {"aliment": "Croissants", "trigger": 1},
      {"aliment": "Crumpets", "trigger": 1},
      {"aliment": "Egg noodles", "trigger": 1},
      {"aliment": "Muffins", "trigger": 1},
      {"aliment": "Pastries", "trigger": 1},
      {"aliment": "Pasta, wheat over 1/2 cup cooked", "trigger": 1},
      {"aliment": "Udon noodles", "trigger": 1},
      {"aliment": "Wheat bran", "trigger": 1},
      {"aliment": "Wheat cereals", "trigger": 1},
      {"aliment": "Wheat flour", "trigger": 1},
      {"aliment": "Wheat germ", "trigger": 1},
      {"aliment": "Wheat noodles", "trigger": 1},
      {"aliment": "Wheat rolls", "trigger": 1},
      {"aliment": "Almond meal", "trigger": 1},
      {"aliment": "Amaranth flour", "trigger": 1},
      {"aliment": "Barley including flour", "trigger": 1},
      {"aliment": "Bran cereals", "trigger": 1},
      {"aliment": "Granary bread", "trigger": 1},
      {"aliment": "Multigrain bread", "trigger": 1},
      {"aliment": "Naan", "trigger": 1},
      {"aliment": "Oatmeal bread", "trigger": 1},
      {"aliment": "Pumpernickel bread", "trigger": 1},
      {"aliment": "Roti", "trigger": 1},
      {"aliment": "Sourdough with kamut", "trigger": 1},
      {"aliment": "Cashews", "trigger": 1},
      {"aliment": "Chestnut flour", "trigger": 1},
      {"aliment": "Cous cous", "trigger": 1},
      {"aliment": "Einkorn flour", "trigger": 1},
      {"aliment": "Freekeh", "trigger": 1},
      {"aliment": "Gnocchi", "trigger": 1},
      {"aliment": "Granola bar", "trigger": 1},
      {"aliment": "Muesli cereal", "trigger": 1},
      {"aliment": "Muesli bar", "trigger": 1},
      {"aliment": "Pistachios", "trigger": 1},
      {"aliment": "Rye", "trigger": 1},
      {"aliment": "Rye crispbread", "trigger": 1},
      {"aliment": "Semolina", "trigger": 1},
      {"aliment": "Spelt flour", "trigger": 1},
      {"aliment": "Wheat free breads", "trigger": 0},
      {"aliment": "Gluten free breads", "trigger": 0},
      {"aliment": "Corn bread", "trigger": 0},
      {"aliment": "Oat bread", "trigger": 0},
      {"aliment": "Rice bread", "trigger": 0},
      {"aliment": "Spelt sourdough bread", "trigger": 0},
      {"aliment": "Potato flour bread", "trigger": 0},
      {"aliment": "Wheat free or gluten free pasta", "trigger": 0},
      {"aliment": "Bread, wheat – 1 slice", "trigger": 0},
      {"aliment": "Almonds – max of 15", "trigger": 0},
      {"aliment": "Biscuit, savoury", "trigger": 0},
      {"aliment": "Biscuit, shortbread – 1 only", "trigger": 0},
      {"aliment": "Brazil nuts", "trigger": 0},
      {"aliment": "Bulgur – 1/4 cup cooked, 44g serving", "trigger": 0},
      {"aliment": "Buckwheat", "trigger": 0},
      {"aliment": "Buckwheat flour", "trigger": 0},
      {"aliment": "Buckwheat noodles", "trigger": 0},
      {"aliment": "Brown rice", "trigger": 0},
      {"aliment": "Whole grain rice", "trigger": 0},
      {"aliment": "Chestnuts", "trigger": 0},
      {"aliment": "Chips, plain", "trigger": 0},
      {"aliment": "Potato crisps, plain", "trigger": 0},
      {"aliment": "Cornflour / maize", "trigger": 0},
      {"aliment": "Crispbread", "trigger": 0},
      {"aliment": "Corncakes", "trigger": 0},
      {"aliment": "Cornflakes – 1/2 cup", "trigger": 0},
      {"aliment": "Cornflakes, gluten free", "trigger": 0},
      {"aliment": "Coconut – milk, cream, flesh", "trigger": 0},
      {"aliment": "Corn, creamed and canned (up to 1/3 cup)", "trigger": 0},
      {"aliment": "Corn tortillas, 3 tortillas", "trigger": 0},
      {"aliment": "Crackers, plain", "trigger": 0},
      {"aliment": "Flax seeds / linseeds – up to 1 tbsp", "trigger": 0},
      {"aliment": "Hazelnuts – max of 15", "trigger": 0},
      {"aliment": "Macadamia nuts", "trigger": 0},
      {"aliment": "Millet", "trigger": 0},
      {"aliment": "Mixed nuts", "trigger": 0},
      {"aliment": "Oatmeal, 1/2 cup", "trigger": 0},
      {"aliment": "Oats", "trigger": 0},
      {"aliment": "Oatcakes", "trigger": 0},
      {"aliment": "Peanuts", "trigger": 0},
      {"aliment": "Pecans – max of 15", "trigger": 0},
      {"aliment": "Pine nuts – max of 15", "trigger": 0},
      {"aliment": "Polenta", "trigger": 0},
      {"aliment": "Popcorn", "trigger": 0},
      {"aliment": "Porridge and oat based cereals", "trigger": 0},
      {"aliment": "Potato flour", "trigger": 0},
      {"aliment": "Pretzels", "trigger": 0},
      {"aliment": "Quinoa", "trigger": 0},
      {"aliment": "Pasta, wheat – up to 1/2 cup cooked", "trigger": 0},
      {"aliment": "Basmati rice", "trigger": 0},
      {"aliment": "Brown rice", "trigger": 0},
      {"aliment": "Rice noodles", "trigger": 0},
      {"aliment": "White rice", "trigger": 0},
      {"aliment": "Rice bran", "trigger": 0},
      {"aliment": "Rice cakes", "trigger": 0},
      {"aliment": "Rice crackers", "trigger": 0},
      {"aliment": "Rice flakes", "trigger": 0},
      {"aliment": "Rice flour", "trigger": 0},
      {"aliment": "Rice Krispies", "trigger": 0},
      {"aliment": "Chia seeds", "trigger": 0},
      {"aliment": "Egusi seeds", "trigger": 0},
      {"aliment": "Hemp seeds", "trigger": 0},
      {"aliment": "Poppy seeds", "trigger": 0},
      {"aliment": "Pumpkin seeds", "trigger": 0},
      {"aliment": "Sesame seeds", "trigger": 0},
      {"aliment": "Sunflower seeds", "trigger": 0},
      {"aliment": "Starch, maize, potato and tapioca", "trigger": 0},
      {"aliment": "Sorghum", "trigger": 0},
      {"aliment": "Tortilla chips", "trigger": 0},
      {"aliment": "Corn chips", "trigger": 0},
      {"aliment": "Walnuts", "trigger": 0}
    ]
  },
  {
    "name": "Condiments",
    "image": "https://www.shareicon.net/data/256x256/2016/08/26/820441_food_512x512.png",
    "list": [
      {"aliment": "Agave", "trigger": 1},
      {"aliment": "Caviar dip", "trigger": 1},
      {"aliment": "Fructose", "trigger": 1},
      {"aliment": "Fruit bar", "trigger": 1},
      {"aliment": "Gravy, if it contains onion", "trigger": 1},
      {"aliment": "High fructose corn syrup (HFCS)", "trigger": 1},
      {"aliment": "Hummus", "trigger": 1},
      {"aliment": "Houmous", "trigger": 1},
      {"aliment": "Honey", "trigger": 1},
      {"aliment": "Jam, mixed berries", "trigger": 1},
      {"aliment": "Jam, strawberry, if contains HFCS", "trigger": 1},
      {"aliment": "Molasses", "trigger": 1},
      {"aliment": "Pesto sauce", "trigger": 1},
      {"aliment": "Quince paste", "trigger": 1},
      {"aliment": "Relish", "trigger": 1},
      {"aliment": "Vegetable pickle", "trigger": 1},
      {"aliment": "Stock cubes", "trigger": 1},
      {"aliment": "Sugar free sweets containing polyols – usually ending in -ol or isomalt", "trigger": 1},
      {"aliment": "Inulin", "trigger": 1},
      {"aliment": "Isomalt (E953 / 953)", "trigger": 1},
      {"aliment": "Lactitol (E966 / 966)", "trigger": 1},
      {"aliment": "Maltitol (E965 / 965)", "trigger": 1},
      {"aliment": "Mannitol (E241 / 421)", "trigger": 1},
      {"aliment": "Sorbitol (E420 / 420)", "trigger": 1},
      {"aliment": "Xylitol (E967 / 967)", "trigger": 1},
      {"aliment": "Tahini paste", "trigger": 1},
      {"aliment": "Tzatziki dip", "trigger": 1},
      {"aliment": "Aspartame", "trigger": 0},
      {"aliment": "Acesulfame K", "trigger": 0},
      {"aliment": "Almond butter", "trigger": 0},
      {"aliment": "Barbecue sauce – check label carefully", "trigger": 0},
      {"aliment": "Capers in vinegar", "trigger": 0},
      {"aliment": "Capers, salted", "trigger": 0},
      {"aliment": "Dark chocolate", "trigger": 0},
      {"aliment": "Milk chocolate – 3 squares", "trigger": 0},
      {"aliment": "White chocolate – 3 squares", "trigger": 0},
      {"aliment": "Chutney, 1 tablespoon", "trigger": 0},
      {"aliment": "Dijon mustard", "trigger": 0},
      {"aliment": "Erythritol (E968 / 968)", "trigger": 0},
      {"aliment": "Fish sauce", "trigger": 0},
      {"aliment": "Golden syrup", "trigger": 0},
      {"aliment": "Glucose", "trigger": 0},
      {"aliment": "Glycerol (E422 / 422)", "trigger": 0},
      {"aliment": "Jam / jelly, strawberry", "trigger": 0},
      {"aliment": "Ketchup (USA) – 1 sachet", "trigger": 0},
      {"aliment": "Maple syrup", "trigger": 0},
      {"aliment": "Marmalade", "trigger": 0},
      {"aliment": "Marmite", "trigger": 0},
      {"aliment": "Mayonnaise – ensuring no garlic or onion in ingredients", "trigger": 0},
      {"aliment": "Miso paste", "trigger": 0},
      {"aliment": "Mustard", "trigger": 0},
      {"aliment": "Oyster sauce", "trigger": 0},
      {"aliment": "Pesto sauce – less than 1 tbsp", "trigger": 0},
      {"aliment": "Peanut butter", "trigger": 0},
      {"aliment": "Rice malt syrup", "trigger": 0},
      {"aliment": "Saccharine", "trigger": 0},
      {"aliment": "Shrimp paste", "trigger": 0},
      {"aliment": "Soy sauce", "trigger": 0},
      {"aliment": "Sriracha hot chilli sauce – 1 tsp", "trigger": 0},
      {"aliment": "Stevia", "trigger": 0},
      {"aliment": "Sweet and sour sauce", "trigger": 0},
      {"aliment": "Sucralose", "trigger": 0},
      {"aliment": "Sugar – also called sucrose", "trigger": 0},
      {"aliment": "Tamarind paste", "trigger": 0},
      {"aliment": "Tomato sauce (outside USA) – 2 sachets, 13g", "trigger": 0},
      {"aliment": "Vegemite", "trigger": 0},
      {"aliment": "Apple cider vinegar, 2 tbsp", "trigger": 0},
      {"aliment": "Balsamic vinegar, 2 tbsp", "trigger": 0},
      {"aliment": "Rice wine vinegar", "trigger": 0},
      {"aliment": "Wasabi", "trigger": 0},
      {"aliment": "Worcestershire sauce – has onion and garlic but very very low amount making it low FODMAP", "trigger": 0}
    ]
  },
  {
    "name": "Drinks",
    "image": "https://www.shareicon.net/data/256x256/2016/10/20/846542_alcohol_512x512.png",
    "list": [
      {"aliment": "Beer – if drinking more than one bottle", "trigger": 1},
      {"aliment": "Coconut water", "trigger": 1},
      {"aliment": "Cordial, apple and raspberry with 50-100% real juice", "trigger": 1},
      {"aliment": "Cordial, orange with 25-50% real juice", "trigger": 1},
      {"aliment": "Fruit and herbal teas with apple added", "trigger": 1},
      {"aliment": "Fruit juices in large quantities", "trigger": 1},
      {"aliment": "Fruit juices made of apple, pear, mango", "trigger": 1},
      {"aliment": "Kombucha", "trigger": 1},
      {"aliment": "Malted chocolate flavored drink", "trigger": 1},
      {"aliment": "Meal replacement drinks containing milk based products e.g. Ensure, Slim Fast", "trigger": 1},
      {"aliment": "Orange juice in quantities over 100ml", "trigger": 1},
      {"aliment": "Quinoa milk", "trigger": 1},
      {"aliment": "Rum", "trigger": 1},
      {"aliment": "Sodas containing High Fructose Corn Syrup (HFCS)", "trigger": 1},
      {"aliment": "Soy milk made with soy beans – commonly found in USA", "trigger": 1},
      {"aliment": "Sports drinks", "trigger": 1},
      {"aliment": "Black tea with added soy milk", "trigger": 1},
      {"aliment": "Chai tea, strong", "trigger": 1},
      {"aliment": "Dandelion tea, strong", "trigger": 1},
      {"aliment": "Fennel tea", "trigger": 1},
      {"aliment": "Chamomile tea", "trigger": 1},
      {"aliment": "Herbal tea, strong", "trigger": 1},
      {"aliment": "Oolong tea", "trigger": 1},
      {"aliment": "Wine – if drinking more than one glass", "trigger": 1},
      {"aliment": "Whey protein, concentrate unless lactose free", "trigger": 1},
      {"aliment": "Whey protein, hydrolyzed unless lactose free", "trigger": 1},
      {"aliment": "Beer – limited to one drink", "trigger": 0},
      {"aliment": "Clear spirits such as Vodka", "trigger": 0},
      {"aliment": "Gin", "trigger": 0},
      {"aliment": "Whiskey", "trigger": 0},
      {"aliment": "Wine – limited to one drink", "trigger": 0},
      {"aliment": "Espresso coffee, regular or decaffeinated, black", "trigger": 0},
      {"aliment": "Espresso coffee, regular or decaffeinated, with up to 250ml lactose free milk", "trigger": 0},
      {"aliment": "Instant coffee, regular or decaffeinated, black", "trigger": 0},
      {"aliment": "Instant coffee, regular or decaffeinated, with up to 250ml lactose free milk", "trigger": 0},
      {"aliment": "Drinking chocolate powder", "trigger": 0},
      {"aliment": "Fruit juice, 125ml and safe fruits only", "trigger": 0},
      {"aliment": "Kvass", "trigger": 0},
      {"aliment": "Lemonade – in low quantities", "trigger": 0},
      {"aliment": "Egg protein", "trigger": 0},
      {"aliment": "Pea protein – up to 20g", "trigger": 0},
      {"aliment": "Rice protein", "trigger": 0},
      {"aliment": "Sacha Inchi protein", "trigger": 0},
      {"aliment": "Whey protein isolate", "trigger": 0},
      {"aliment": "Soya milk made with soy protein", "trigger": 0},
      {"aliment": "Sugar free fizzy drinks / soft drinks / soda – such as diet coke, in low quantities as aspartame and acesulfame k can be irritants", "trigger": 0},
      {"aliment": "‘Sugar’ fizzy drinks / soft drinks / soda that do no contain HFCS such as lemonade, cola. Limit intake due to these drinks being generally unhealthy and can cause gut irritation", "trigger": 0},
      {"aliment": "Black tea, weak e.g. PG Tips", "trigger": 0},
      {"aliment": "Chai tea, weak", "trigger": 0},
      {"aliment": "Fruit and herbal tea, weak – ensure no apple added", "trigger": 0},
      {"aliment": "Green tea", "trigger": 0},
      {"aliment": "Peppermint tea", "trigger": 0},
      {"aliment": "White tea", "trigger": 0},
      {"aliment": "Water", "trigger": 0}
    ]
  },
  {
    "name": "Dairy",
    "image": "https://img.icons8.com/cotton/2x/milk-bottle.png",
    "list": [
      {"aliment": "Buttermilk", "trigger": 1},
      {"aliment": "Cheese, cream", "trigger": 1},
      {"aliment": "Cheese, Halmoumi", "trigger": 1},
      {"aliment": "Cheese, ricotta", "trigger": 1},
      {"aliment": "Cream", "trigger": 1},
      {"aliment": "Custard", "trigger": 1},
      {"aliment": "Gelato", "trigger": 1},
      {"aliment": "Ice cream", "trigger": 1},
      {"aliment": "Kefir", "trigger": 1},
      {"aliment": "Cow milk", "trigger": 1},
      {"aliment": "Goat milk", "trigger": 1},
      {"aliment": "Evaporated milk", "trigger": 1},
      {"aliment": "Sheep’s milk", "trigger": 1},
      {"aliment": "Sour cream", "trigger": 1},
      {"aliment": "Yoghurt", "trigger": 1},
      {"aliment": "Butter", "trigger": 0},
      {"aliment": "Brie", "trigger": 0},
      {"aliment": "Camembert", "trigger": 0},
      {"aliment": "Cheddar", "trigger": 0},
      {"aliment": "Cottage – 2 tablespoons", "trigger": 0},
      {"aliment": "Feta", "trigger": 0},
      {"aliment": "Goat / chevre", "trigger": 0},
      {"aliment": "Monterey Jack", "trigger": 0},
      {"aliment": "Mozzarella", "trigger": 0},
      {"aliment": "Parmesan", "trigger": 0},
      {"aliment": "Ricotta – 2 tablespoons", "trigger": 0},
      {"aliment": "Swiss", "trigger": 0},
      {"aliment": "Dairy free chocolate pudding", "trigger": 0},
      {"aliment": "Eggs", "trigger": 0},
      {"aliment": "Margarine", "trigger": 0},
      {"aliment": "Almond milk", "trigger": 0},
      {"aliment": "Hemp milk", "trigger": 0},
      {"aliment": "Lactose free milk", "trigger": 0},
      {"aliment": "Macadamia milk", "trigger": 0},
      {"aliment": "Oat milk – 30 ml, enough for cereal", "trigger": 0},
      {"aliment": "Rice milk – up to 200ml per sitting", "trigger": 0},
      {"aliment": "Sorbet", "trigger": 0},
      {"aliment": "Soy protein (avoid soya beans)", "trigger": 0},
      {"aliment": "Swiss cheese", "trigger": 0},
      {"aliment": "Tempeh", "trigger": 0},
      {"aliment": "Tofu – drained and firm varieties", "trigger": 0},
      {"aliment": "Whipped cream", "trigger": 0},
      {"aliment": "Coconut yoghurt", "trigger": 0},
      {"aliment": "Greek yoghurt, in small amounts", "trigger": 0},
      {"aliment": "Lactose free yoghurt", "trigger": 0},
      {"aliment": "Goats yoghurt", "trigger": 0}
    ]
  },
  {
    "name": "Ingredients",
    "image": "https://www.shareicon.net/data/256x256/2016/08/01/805184_food_512x512.png",
    "list": [
      {"aliment": "Carob powder", "trigger": 1},
      {"aliment": "All herbs", "trigger": 0},
      {"aliment": "Basil", "trigger": 0},
      {"aliment": "Bay leaves", "trigger": 0},
      {"aliment": "Cilantro", "trigger": 0},
      {"aliment": "Coriander", "trigger": 0},
      {"aliment": "Curry leaves", "trigger": 0},
      {"aliment": "Fenugreek", "trigger": 0},
      {"aliment": "Gotukala", "trigger": 0},
      {"aliment": "Lemongrass", "trigger": 0},
      {"aliment": "Mint", "trigger": 0},
      {"aliment": "Oregano", "trigger": 0},
      {"aliment": "Pandan", "trigger": 0},
      {"aliment": "Parsley", "trigger": 0},
      {"aliment": "Rampa", "trigger": 0},
      {"aliment": "Rosemary", "trigger": 0},
      {"aliment": "Sage", "trigger": 0},
      {"aliment": "Tarragon", "trigger": 0},
      {"aliment": "Thyme", "trigger": 0},
      {"aliment": "All spice", "trigger": 0},
      {"aliment": "Black pepper", "trigger": 0},
      {"aliment": "Cardamon", "trigger": 0},
      {"aliment": "Chilli powder", "trigger": 0},
      {"aliment": "Cinnamon", "trigger": 0},
      {"aliment": "Cloves", "trigger": 0},
      {"aliment": "Cumin", "trigger": 0},
      {"aliment": "Curry powder", "trigger": 0},
      {"aliment": "Fennel seeds", "trigger": 0},
      {"aliment": "Five spice", "trigger": 0},
      {"aliment": "Goraka", "trigger": 0},
      {"aliment": "Mustard seeds", "trigger": 0},
      {"aliment": "Nutmeg", "trigger": 0},
      {"aliment": "Paprika", "trigger": 0},
      {"aliment": "SaffronStar anise", "trigger": 0},
      {"aliment": "Turmeric", "trigger": 0},
      {"aliment": "All oils", "trigger": 0},
      {"aliment": "Avocado oil", "trigger": 0},
      {"aliment": "Canola oil", "trigger": 0},
      {"aliment": "Coconut oil", "trigger": 0},
      {"aliment": "Olive oil", "trigger": 0},
      {"aliment": "Peanut oil", "trigger": 0},
      {"aliment": "Rice bran oil", "trigger": 0},
      {"aliment": "Sesame oil", "trigger": 0},
      {"aliment": "Soybean oil", "trigger": 0},
      {"aliment": "Sunflower oil", "trigger": 0},
      {"aliment": "Vegetable oil", "trigger": 0},
      {"aliment": "Garlic infused oil", "trigger": 0},
      {"aliment": "Onion infused oil", "trigger": 0},
      {"aliment": "Acai powder", "trigger": 0},
      {"aliment": "Asafoetida powder – great onion substitute", "trigger": 0},
      {"aliment": "Baking powder", "trigger": 0},
      {"aliment": "Baking soda", "trigger": 0},
      {"aliment": "Cacao powder", "trigger": 0},
      {"aliment": "Cocoa powder", "trigger": 0},
      {"aliment": "Cream, 2 tablespoons", "trigger": 0},
      {"aliment": "Gelatine", "trigger": 0},
      {"aliment": "Ghee", "trigger": 0},
      {"aliment": "Icing sugar", "trigger": 0},
      {"aliment": "Lard", "trigger": 0},
      {"aliment": "Nutritional yeast", "trigger": 0},
      {"aliment": "Salt", "trigger": 0},
      {"aliment": "Soybean oil", "trigger": 0}
    ]
  }
];
