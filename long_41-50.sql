INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Kir Royale', 
N'Кир Рояль',140, 
N'Cocktail has a superb sweet and sour taste.', 
N'Коктейль отличается превосходным кисло-сладким вкусом.', 
N'1. Pour blackcurrant liqueurinto a chilled glass 
2. Then, add sparkling wine (champagne) and stir the cocktail with a help of the cocktail spoon', 
N'1. Налить в охлажденный бокал черносмородиновый ликер
2. Долить шампанскоуе и аккуратно размешать коктейльной ложкой',
N'1. Blackcurrant liqueur - 20 ml
2. Sparkling wine (champagne) - 120 ml', 
N'1. Черносмородиновый ликер - 20 мл
2. Игристое вино (шампанское) - 120 мл', 'kir_royarl.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Kir Royale';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Blackcurrant liqueur';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Sparkling wine (champagne)';


INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Mimosa', 
N'Мимоза',180, 
N'Mimosa has become a symbol of spring in Russia and the wedding cocktail in England.', 
N'Мимоза стала символом весны в России и свадебным коктейлем в Англии.', 
N'1. Pour orange juice into a chilled glass 
2. Then, add sparkling wine (champagne) and stir the cocktail with a help of the cocktail spoon
3. Decorate with a slice of orange', 
N'1. Налить в охлажденный бокал апельсиновый сок
2. Долить шампанское доверху и аккуратно размешать коктейльной ложкой
3. Украсить ломтиком апельсина',
N'1. Sparkling wine (champagne) - 90 ml
2. Orange juice - 90 ml', 
N'1. Игристое вино (шампанское) - 90 мл
2. Апельсиновый сок - 90 мл', 'mimosa.jpg', 1, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Mimosa';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sparkling wine (champagne)';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Orange juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'French 75', 
N'Френч 75',155, 
N'Cocktail has a superb sweet and sour taste.', 
N'Коктейль отличается превосходным кисло-сладким вкусом.', 
N'1. Pour  lemon juice, sugar syrup and gin into a shake
2. Add ice into a shaker and shake up
3. Then, you must use a strainer and pour substance into a chilled glass
4. Add  champagne and stir the cocktail with a help of the cocktail spoon
5. Garnish with lemon peel', 
N'1. Налить в шейкер лимонный сок, сахарный сироп и джин 
2. Наполнить шейкер кубиками льда и взбить
3. Перелить через ситечко в охлажденный бокал
4. Долить шампанское доверху и аккуратно размешать коктейльной ложкой
5. Украсить цедрой лимона ',
N'1. Gin - 30 ml
2. Sparkling wine (champagne) - 90 ml
3. Sugar syrup - 20 ml
4. Lemon juice - 15 ml
5. Ice (cubes) - 200 gram', 
N'1. Джин - 30 мл
2. Игристое вино (шампанское) - 90 мл
3. Сахарный сироп - 20 мл
4. Лимонный сок - 15 мл
5. Лед в кубиках - 200 грамм', 'French75.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'French 75';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Gin';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Sparkling wine (champagne)';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Sugar syrup';
DECLARE @component4 BIGINT;
SELECT @component4 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';


INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component4, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Bellini', 
N'Беллини',120, 
N'The Bellini was invented sometime between 1934 and 1948 by Giuseppe Cipriani, founder of Harry\'s Bar in Venice, Italy. He named the drink the Bellini because its unique pink color reminded him of the toga of a saint in a painting by 15th-century Venetian artist Giovanni Bellini.', 
N'«Беллини» - алкогольный коктейль, изобретённый в Венеции в первой половине XX века Джузеппе Чиприани,владельцем культового «Бара Гарри» . Это - один из самых популярных коктейлей Италии.', 
N'1. Put peach puree in a mixing glass 
2. Add lemon juice, sugar syrup and champagne (50 ml)
3. Add ice into a shaker and stir the cocktail with a help of the cocktail spoon
4. Then, you must use a strainer and pour substance into a glass
5. Add champagne (50 ml) into a glass', 
N'1. Положить в стакан для смешивания персиковое пюре 
2. Добавить лимонный сок, сахарный сироп и шампанское (50 мл) 
3. Наполнить стакан кубиками льда и аккуратно размешать коктейльной ложкой
4. Перелить через ситечко в бокал 
5. Долить шампанское (50 мл)  доверху',
N'1. Sparkling wine (champagne) - 100 ml
2. Sugar syrup - 10 ml
3. Lemon juice - 10 ml
4. Peach puree - 20 gram
5. Ice (cubes) - 300 gram', 
N'1. Игристое вино (шампанское) - 100 мл
2. Сахарный сироп - 10 мл
3. Лимонный сок - 10 мл
4. Персиковое пюре - 20 грамм
5. Лед в кубиках - 300 грамм', 'Bellini.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Bellini';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sparkling wine (champagne)';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Sugar syrup';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Royal Dream', 
N'Роял дрим',220, 
N'This is a very nice and sweet cocktail.', 
N'Это очень приятный и сладкий коктейль.', 
N'1. To make sugar rim on the glass and  pour ice into a glass
2. Put the strawberries into a blender
3. Pour the strawberry syrup and shake up
4. Pour substance into a glass
5. Then, add the champagne and stir the cocktail with a help of the cocktail spoon
6. Garnish with strawberry', 
N'1. Сделать на стакане сахарную окаемку и наполнить кубиками льда доверху
2. Положить в блендер клубнику
3. Налить клубничный сироп и взбить
4. Перелить в стакан из блендера
5. Долить шампанское доверху и аккуратно размешать коктейльной ложкой
6. Украсить клубникикой ',
N'1. Sparkling wine (champagne) - 200 ml
2. Strawberry syrup - 20 ml
3. Strawberry - 110 gram
4. Sugar - 2 gram
5. Ice (cubes) - 200 gram', 
N'1. Игристое вино (шампанское) - 200 мл
2. Клубничный сироп - 20 мл
3. Клубника - 110 грамм
4. Сахарный песок - 2 грамма
5. Лед в кубиках - 200 грамм', 'royal_dream.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Royal Dream';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sparkling wine (champagne)';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Strawberry syrup';


INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Rossini', 
N'Россини',120, 
N'This is a very nice and sweet cocktail.', 
N'Это очень приятный и сладкий коктейль.', 
N'1. Put strawberry puree in a mixing glass 
2. Then, add the champagne
3. Add ice into a shaker and stir the cocktail with a help of the cocktail spoon
4. Then, you must use a strainer and pour substance into a chilled glass', 
N'1. Положить в стакан для смешивания клубничное пюре 
2. Налить шампанское 
3. Наполнить стакан кубиками льда и аккуратно размешать коктейльной ложкой
4. Перелить через ситечко в охлажденный бокал',
N'1. Sparkling wine (champagne) - 120 ml
2. Strawberry puree - 30 gram
3. Ice (cubes) - 300 gram', 
N'1. Игристое вино (шампанское) - 120 мл
2. Клубничное пюре - 30 грамм
3. Лед в кубиках - 300 грамм', 'Rossini.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Rossini';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sparkling wine (champagne)';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

 /*****************************/
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Rosso pomegranate', 
N'Россо гранат',200, 
N'This is refreshing and summer cocktail.', 
N'Летний и освежающий коктейль.', 
N'1. Pour ice into a glass
2. Add vermouth
3. Then, add pomegranate juice and stir the cocktail with a help of the cocktail spoon
4. Decorate with a slice of lime and pomegranate', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить вермут 
3. Долить гранатовый сок доверху и аккуратно размешай коктейльной ложкой
4. Украсить гранатом и дольками лайма',
N'1. Vermouth - 50 ml
2. Pomegranate juice - 150 ml
3. Pomegranate - 30 gram
4. Ice (cubes) - 180 grams', 
N'1. Вермут - 50 мл
2. Гранатовый сок - 150 мл
3. Гранат - 30 грамм
4. Лед в кубиках - 180 грамм', 'Rosso_pomegranate.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Rosso pomegranate';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vermouth';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Pomegranate juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Ancient Greek', 
N'Древнегреческий',150, 
N'It is very interesting cocktail based on wine with a small amount of alcohol, which is suitable for any holiday, and even dinner at home with your family.', 
N'Очень интересный коктейль на основе вина с небольшим количеством алкоголя, который подойдет для любого праздника, и даже ужина дома в кругу семьи. ', 
N'1. Pour red wine into a glass 
2. Then, add water without gas', 
N'1. Налить в стакан красное сухое вино 
2. Аккуратно разбавь водой без газа ',
N'1. Dry red wine - 100 ml
2. Water without gas - 50 ml', 
N'1. Красное сухое вино - 100 мл
2. Вода без газа - 50 мл', 'Ancient_Greek.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Ancient Greek';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Wine';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Monaco', 
N'Монако',230, 
N'Cocktail "Monaco" is a  light, slightly sweet alcoholic cocktail with grenadine, adored in France, Belgium and Switzerland.', 
N'Коктейль Монако - легкий, слегка сладковатый алкогольный коктейль с гренадином, обожаемый во Франции, Бельгии и Швейцарии.', 
N'1. Pour sugar into a glass
2. Then, add grenadines and a light beer
3. Add Sprite and stir the cocktail with a help of the cocktail spoon 
4. Decorate with a piece of lime', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить гренадин и светлое пиво 
3. Долить Sprite доверху и аккуратно размешать коктейльной ложкой
4. Украсить кусочком лайма',
N'1. Grenadine Syrup - 5 ml
2. Beer - 125 ml
3. Sprite (soda) - 100 ml
4. Ice - 200 grams', 
N'1. Сироп Гренадин - 5 мл
2. Светлое пиво - 125 мл
3. Sprite (содовая вода) - 100 мл
4. Лед - 180 грамм', 'Monaco.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Monaco';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Grenadine Syrup';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Beer';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite (soda)';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Grape mojito', 
N'Виноградный мохито',135, 
N'Mojito is a traditional Cuban drink. A special role is played a combination of lime and mint. This cocktail is popular all over the world.', 
N'Мохито традиционный кубинский напиток. Главную роль играет вкусовое сочетание лайма и мяты, именно благодаря этим двум ингредиентам коктейль и приобрел всемирную популярность.', 
N'1. Put green grapes (halved) and mint into a glass 
2. Add the sugar into a glass and press
3. Then, add  ice (crushed)
4. Pour the lime juice and white rum
5. Add soda and stir the cocktail with a help of the cocktail spoon
6. Add a little ice (crushed)
7. Garnish with green grapes berries, a piece of lime and a sprig of mint', 
N'1. Положить в стакан зеленый виноград (разрезанных пополам) и мяту 
2. Добавить сахарный песок 2 к. ложки и подавить смесь
3. Наполнить стакан дробленым льдом доверху
4. Налить лаймовый сок и белый ром 
5. Долить содовую доверху и аккуратно размешать коктейльной ложкой
6. Досыпать немного дробленого льда
7. Украсить ягодами зеленого винограда, кусочком лайма и веточкой мяты',
N'1. Rum (white) - 50 ml
2. Lime juice - 15 ml
3. Sprite (soda) - 70 ml
4. Green grapes - 40 gram
4. Peppermint - 3 gram
5. Sugar - 10 gram
6. Ice (crushed) - 200 gram', 
N'1. Белый ром - 50 мл
2. Лаймовый сок - 15 мл
3. Sprite (содовая вода) - 70 мл
4. Зеленый виноград - 40 грамм
4. Мята - 3 грамма
5. Сахарный песок - 10 грамм
6. Дробленый лед - 200 грамм', 'Grape_mojito.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Grape mojito';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Lime juice';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite (soda)';


INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/
 
 