 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Rum and cherry juice', 
N'Ром с вишневым соком',200, 
N'"Rum and cherry juice" is light and refreshing cocktail.', 
N'"Ром с вишневым соком" - легкий и освежающий коктейль.', 
N'1. Pour ice into a glass
2. Add rum (white) into a glass
3. Then, add сherry juice and stir the cocktail with a help of the cocktail spoon
4. Decorate with a circle of orange and/or a maraschino cherry', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить белый ром 
3. Долить вишневый сок доверху и аккуратно размешать коктейльной ложкой
4. Украсить кружечком апельсина и/или коктельной вишенкой',
N'1. Rum - 50 ml
2. Cherry juice  - 100 ml
3. Ice (cubes) - 180 grams', 
N'1. Pом - 50 мл
2. Вишневый сок - 100 мл
3. Лед в кубиках - 180 грамм', 'rum_and_cherry.jpg', 1, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Rum and cherry juice';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Cherry juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
  INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'The Scarlet Sails', 
N'Алые паруса',155, 
N'The Scarlet Sails - Tale near you!', 
N'Алые паруса - Сказка возле Вас!', 
N'1. Pour ice into a glass
2. Add  syrup rose and lemon juice into a glass
3. Then, add Sprite (coda) and stir the cocktail with a help of the cocktail spoon
4. Decorate with rose petals', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить лимонный сок и сироп розы 
3. Долить спрайт доверху и аккуратно размешай коктейльной ложкой
4. Украсить лепестками роз',
N'1. Syrup Rose - 20 ml
2. Lemon juice - 15 ml
3. Sprite (coda) - 120 ml
4. Ice (crushed) - 200 grams', 
N'1. Сироп розы - 20 мл
2. Лимонный сок - 15 мл
3. Sprite (cодовая вода) - 120 мл
4. Лед дробленый - 200 грамм', 'scarlet_starlet.jpg', 0, 0);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'The Scarlet Sails';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Syrup Rose';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite (coda)';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/
 
  INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'White chamomile mulled wine', 
N'Белый ромашковый глинтвейн',170, 
N'Mulled wine is a favourite drink of the Roman emperors. ', 
N'Глинтвейн любимым напитком римских императоров.', 
N'1. Pour honey and wine (white, dry) into a pitcher 
2. Add cinnamon sticks, carnation, lemon (zest)  and chamomile tea (bags)
3. Heat, without boiling, and stir 
4. Then, you must use a strainer and pour substance into a glass', 
N'1. Налить в питчер мед и белое сухое вино 
2. Добавить палочку корицы, гвоздику, цедру лимона и пакетик ромашкового чая
3. Нагреть, не доводя до кипения и помешивать
4. Перелить через ситечко в стакан',
N'1. Dry white wine - 150 ml
2. Chamomile tea (bags) - 2 pcs
3. Honey - 20 ml
4. Cinnamon sticks - 5 gram
5. Carnation - 3 gram
6. Lemon (zest) - 1 pc', 
N'1. Сухое белое вино - 150 мл
2. Ромашковый чай в пакетиках - 2 шт
3. Мед - 20 мл
4. Корица в палочках - 5 грамм
5. Гвоздика - 3 грамм
6. Лимонная цедра - 1 шт', 'White_chamomile_mulled_wine.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'White chamomile mulled wine';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Wine';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

 /*****************************/
 
  INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Mulled wine (red wine)', 
N'Глинтвейн (красное вино)',150, 
N'Mulled wine is a favourite drink of the Roman emperors.', 
N'Глинтвейн любимым напитком римских императоров.', 
N'1. Pour dry red wine into a pitcher 
2. Add sugar, carnation, lemon (zest), orange (zest) and cinnamon sticks
3. Heat, without boiling, and stir 
4. Then, pour substance into a glass', 
N'1. Налить в питчер красное сухое вино
2. Добавить сахарный песок, палочку корицы, гвоздику, лимонную и апельсиновую цедру
3. Помешивая, нагреть, не доводя до кипения
4. Перелить в бокал';
N'1. Dry red wine - 150 ml
2. Sugar - 10 gram
3. Cinnamon sticks - 5 gram
4. Carnation - 3 gram
5. Orange (zest) - 1 pc
6. Lemon (zest) - 1 pc', 
N'1. Красное сухое вино - 150 мл
2. Сахарный песок - 10 грамм
3. Корица в палочках - 5 грамм
4. Гвоздика - 3 грамма
5. Лимонная цедра - 1 шт
6. Апельсиновая цедра - 1 шт', 'Mulled_wine_(red_wine).jpg', 1, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Mulled wine (red wine)';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Wine';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

 /*****************************/
 
  INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Mulled wine (mandarin and rosemary)', 
N'Глинтвейн (мандарин с розмарином)',160, 
N'Mulled wine is a favourite drink of the Roman emperors.', 
N'Глинтвейн любимым напитком римских императоров.', 
N'1. Pour the chopped halves tangerine (zest) into a pitcher 
2. Add shalf a mandarin (pulp) and press
3. Pour dry red wine into a pitcher
4. Then, add rosemary, honey, cinnamon sticks, carnation, lemon (zest) 
5. Heat, without boiling, and stir 
6. Then, pour substance into a glass 
7. Decorate with a circle of tangerine and rosemary', 
N'1. Положить в питчер нарезанную цедру половинки мандарина и подавить мадлером
2. Добавить мякоть половинки мандарина и подавить мадлером
3. Налить красное сухое вино 
4. Добавить мед, лимонную цедру, пару веточек розмарина, палочку корицы и гвоздику 
5. Помешивая, нагреть, не доводя до кипения
6. Перелить в бокал 
7. Украсить кружком мандарина и веточкой розмарина',
N'1. Dry red wine - 150 ml
2. Tangerine - 60 gram
3. Rosemary - 5 gram
4. Honey - 10 ml
5. Cinnamon sticks - 5 gram
6. Carnation - 3 gram 
7. Lemon (zest) - 1 pc', 
N'1. Красное сухое вино - 150 мл
2. Мандарин - 60 грамм
3. Розмарин - 5 грамм
4. Мед - 10 мл
5. Корица в палочках - 5 грамм
6. Гвоздика - 3 грамм
7. Лимонная цедра - 1 шт', 'Mulled_wine(mandarin_and_rosemary).jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = '';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Wine';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

 /*****************************/
 
  INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Czech mulled wine', 
N'Чешский глинтвейн',180, 
N'Mulled wine is a favourite drink of the Roman emperors.', 
N'Глинтвейн любимым напитком римских императоров.', 
N'1. Pour dry red wine, becherovka, lime juice, honey into a pitcher 
2. Heat, without boiling, and stir 
3. Then, pour substance into a glass
4. Decorate with a cinnamon stick', 
N'1. Налить в питчер лаймовый сок, мед, красное вино сухое и бехеровку
2. Помешивая, нагреть, не доводя до кипения
3. Перелить в бокал
4. Украсить палочкой корицы',
N'1. Becherovka - 40 ml
2. Dry red wine - 100 ml
3. Lime juice - 10 ml
4. Honey - 30 ml
5. Cinnamon sticks - 5 grams', 
N'1. Бехеровка - 40 мл
2. Красное сухое вино - 100 мл
3. Лаймовый сок - 10 мл
4. Мед - 30 мл
5. Корица в палочках - 5 грамм', 
'mulled_wine_Prague.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Czech mulled wine';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Becherovka';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Wine';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 
  INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Strawberry mulled wine', 
N'Клубничный глинтвейн',150, 
N'Mulled wine is a favourite drink of the Roman emperors.', 
N'Глинтвейн любимым напитком римских императоров.', 
N'1. Pour strawberry jam into a pitcher 
2. Add dry red wine, cinnamon powdered, carnation, orange (zest), lemon (zest)
3. Heat, without boiling, and stir 
4. Then, pour substance into a glass', 
N'1. Положить в питчер клубничный джем 
2. Налить красное вино сухое 
3. Добавить молотую корицу, гвоздику, лимонную и апельсиновую цедру
4. Помешивая нагреть, не доводя до кипения
6. Перелить в стакан',
N'1. Dry red wine - 150 ml
2. Strawberry jam - 15 gram
3. Carnation - 3 gram
4. Cinnamon powdered - 2 gram
5. Orange (zest)  - 1 pc
6. Lemon (zest)  - 1 pc', 
N'1. Красное сухое вино - 150 мл
2. Джем клубничный - 15 грамм
3. Гвоздика - 3 грамм
4. Корица молотая - 2 грамм
5. Апельсиновая цедра - 1 шт
6. Лимонная цедра - 1 шт', 'stranberry_Mulled-Wine.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Strawberry mulled wine';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Wine';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

 /*****************************/
 
  INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Absinthe Energy', 
N' Абсент с энергетиком',200, 
N'After this cocktail you will be more confidance.', 
N'Этот коктейль прибавит вам уверенности в себе.', 
N'1. Pour ice into a glass
2. Add absinthe into a glass
3. Then, add energy drink and stir the cocktail with a help of the cocktail spoon
4. Decorate with a slice of pineapple', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить абсент 
3. Долить энергетик доверху и аккуратно размешать коктейльной ложкой
4. Украсить кусочком ананаса',
N'1. Absinthe - 50 ml
2. Energy drink - 150 ml
3. Ice (cubes) - 180 grams', 
N'1. Абсент - 50 мл
2. Энергетический напиток - 150 мл
3. Лед в кубиках - 180 грамм', 'Energy.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Absinthe Energy';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Absinthe';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Energy drink';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 
  INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Transformer', 
N'Трансформатор',90, 
N'Named this drink Transformer because of waht happens while drinking it, as you drink this drink it starts off looking like a Incredilbe Hulk but not being fully green, but as you drink and it stirs it slowly becomes green.', 
N'Назвали этот напиток - "Трансформатор", из-за того, что  происходит во время его питья. Когда только Вы начинаете пить этот напиток, он превращаеться в Невероятного Халка. "Трансформатор" сразу не полностью зеленой, но во время питья потихоньку таким становиться.', 
N'1. Pour ice into a glass
2. Pour lime juice, elderberry syrup, dry orange liqueur  and Scottish whisky into a shaker
3. Add orange bitter
4. Add icе into a shaker and shake well 
5. Then, you must use a strainer and pour substance into a glass
6. Decorate with a orange (zest)', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить в шейкер лаймовый сок, сироп бузины, ликер драй оранж  и шотландский виски 
3. Добавить апельсиновый биттер 
4. Наполнить шейкер кубиками льда и взбить
5. Перелить через ситечко в стакан
6. Украсить апельсиновой цедрой',
N'1. Scottish whiskey - 40 ml
2. Dry Orange liqueur - 20 ml
3. Orange bitter (martini) - 5 ml
4. Elderberry syrup - 10 ml
5. Lime juice - 15 ml
6. Orange zest - 1 pc
7. Ice (cubes) - 320 grams', 
N'1. Виски шотландский - 40 мл
2. Ликер Драй Оранж - 20 мл
3. Апельсиновый биттер (мартини) - 5 мл
4. Сироп бузины - 10 мл
5. Лаймовый сок - 15 мл
6. Апельсиновая цедра - 1 шт
7. Лед в кубиках - 320 грамм', 'Transformer.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Transformer';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Whiskey';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Dry Orange liqueur';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Martini';
DECLARE @component4 BIGINT;
SELECT @component4 = Id FROM [CocktailComponents] WHERE [Name] = 'Elderberry syrup';
DECLARE @component5 BIGINT;
SELECT @component5 = Id FROM [CocktailComponents] WHERE [Name] = 'Lime juice';


INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component4, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component5, @cocktailId);


GO

 /*****************************/
 
  INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Royal rhubarb', 
N'Королевский ревень',140, 
N'The original combination 
of champange and rhubarb liqueur.', 
N'Оригинальное сочетание шампанского и ликера с ревеня.', 
N'1. Pour rhubarb liqueur into a chilled glass 
2. Then, add sparkling wine (champagne) and stir the cocktail with a help of the cocktail spoon
3. Decorate with a maraschino cherry', 
N'1. Налить в охлажденный стакан ревеневый ликер 
2. Долить шампанское доверху и аккуратно размешать коктейльной ложкой
3. Украсить коктейльной вишней',
N'1. Rhubarb liqueur - 20 ml
2. Sparkling wine (champagne) - 120 ml', 
N'1. Ревеневый ликер - 20 мл
2. Игристое вино (шампанское) - 120 мл', 'Rhubarb-Cocktail-glasses.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Royal rhubarb';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Rhubarb liqueur';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Sparkling wine (champagne)';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);


GO

 /*****************************/