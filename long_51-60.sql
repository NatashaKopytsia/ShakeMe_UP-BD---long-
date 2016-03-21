INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Chapurin', 
N'Чапурин',150, 
N'This is refreshing and summer cocktail.', 
N'Летний и освежающий коктейль.', 
N'1. Put lime sorbet into a chilled glass
2. Pour the champagne and stir the cocktail with a help of the cocktail spoon', 
N'1. Положить в охлажденный бокал лаймовый сорбет
2. Налить шампанское и аккуратно размешать коктейльной ложкой',
N'1. Sparkling wine (champagne) - 120 ml
2. Lime sorbet - 50 grams', 
N'1. Игристое вино (шампанское) - 120 мл
2. Лаймовый сорбет - 50 грамм', 'chapurin.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Chapurin';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sparkling wine (champagne)';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);


GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Black and white', 
N'Черное и белое',150, 
N'Cocktail has a superb deep coffee flavor.', 
N'Коктейль отличается превосходным насыщенным кофейным вкусом.', 
N'1. Pour coffee liqueur
 into a chilled glass
2. Then, add the champagne
3. Garnish with coffee beans', 
N'1. Налить в охлажденный бокал кофейный ликер 
2. Долить шампанское 
3. Украсить зернами кофе',
N'1. Coffee liqueur - 30 ml
2. Sparkling wine (champagne) - 120 ml
3. Coffee beans - 2 grams', 
N'1. Кофейный ликер - 30 мл
2. Игристое вино (шампанское) - 120 мл
3. Кофе в зернах - 2 грамм','chernoe-i-beloe.jpg' 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Black and white';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sparkling wine (champagne)';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Coffee liqueur';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Strawberry mojito', 
N'Мохито клубничный',165, 
N'Mojito is a traditional Cuban drink. A special role is played a combination of lime and mint. This cocktail is popular all over the world.', 
N'Мохито традиционный кубинский напиток. Главную роль играет вкусовое сочетание лайма и мяты, именно благодаря этим двум ингредиентам коктейль и приобрел всемирную популярность.', 
N'1. Put peppermint and lime into a glass 
2. Add the strawberry into a glass and press
3. Then, add  ice (crushed)
4. Pour strawberry syrup and white rum
5. Add soda and stir the cocktail with a help of the cocktail spoon
6. Add a little ice (crushed)
7. Garnish with and strawberries and a sprig of mint', 
N'1. Положить в стакан мяту и лайм 
2. Добавить клубнику и подавить
3. Наполни стакан дробленым льдом доверху
4. Налить клубничный сироп и белый ром
5. Долить содовую доверху и аккуратно размешать коктейльной ложкой
6. Досыпать немного дробленого льда
7. Украсить веточкой мяты и ягодой клубники',
N'1. Rum (white) - 50 ml
2. Strawberry syrup - 15 ml
3. Sprite (soda) - 100 ml
4. Lime - 60 grams
5. Strawberry - 120 grams
6. Peppermint - 3 gram
7. Ice (crushed) - 200 gram', 
N'1. Pом (белый) - 50 мл
2. Клубничный сироп - 15 мл
3. Sprite (содовая вода) - 100 мл
4. Лайм - 60 грамм
5. Клубника - 120 грамм
6. Мята - 3 грамм
7. Дробленый лед - 200 грамм', 'strawberry-mojito.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Strawberry mojito';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite (soda)';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = ' Strawberry syrup';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Raspberry mojito', 
N'Мохито малиновый',165, 
N'Mojito is a traditional Cuban drink. A special role is played a combination of lime and mint. This cocktail is popular all over the world.', 
N'Мохито традиционный кубинский напиток. Главную роль играет вкусовое сочетание лайма и мяты, именно благодаря этим двум ингредиентам коктейль и приобрел всемирную популярность.', 
N'1. Put peppermint and lime into a glass 
2. Add the raspberry  into a glass and press
3. Then, add  ice (crushed)
4. Pour raspberry syrup and white rum
5. Add soda and stir the cocktail with a help of the cocktail spoon
6. Add a little ice (crushed)
7. Garnish with and raspberry and a sprig of mint', 
N'1. Положить в стакан мяту и лайм 
2. Добавить малину и подавить
3. Наполни стакан дробленым льдом доверху
4. Налить малиновый сироп и белый ром
5. Долить содовую доверху и аккуратно размешать коктейльной ложкой
6. Досыпать немного дробленого льда
7. Украсить веточкой мяты и ягодами малины',
N'1. Rum (white) - 50 ml
2. Raspberry syrup - 15 ml
3. Sprite (soda) - 100 ml
4. Lime - 60 grams
5. Raspberry - 55 grams
6. Peppermint - 3 gram
7. Ice (crushed) - 200 grams', 
N'1. Pом (белый) - 50 мл
2. Малиновый сироп - 15 мл
3. Sprite (содовая вода) - 100 мл
4. Лайм - 60 грамм
5. Малина - 55 грамм
6. Мята - 3 грамм
7. Дробленый лед - 200 грамм', 'Raspberry_mojito.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Raspberry mojito';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite (soda)';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Raspberry syrup';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Raspberry daiquiri', 
N'Дайкири малиновый',80, 
N'Daiquiri is a traditional Cuban drink.', 
N'Дайкири - это традиционный кубинский напиток.', 
N'1. Put the raspberries (6 berries) into a blender 
2. Then, add the lime juice, honey syrup, white rum
3. Add crushed ice into a blender and whip
4. Pour substance into a glass
5. Garnish with circle of lime and raspberries', 
N'1. Положить в блендер малину 6 ягод
2. Налить лаймовый сок, медовый сироп и белый ром 
3. Добавить в блендер дробленый лед и взбить
4. Перелить в стакан
5. Украсить кружком лайма и ягодкой малины',
N'1. Rum (white) - 50 ml
2. Honey syrup - 20 ml 
3. Lime juice - 10 ml
4. Lime - 10 grams
5. Raspberry - 35 grams
6. Ice (crushed) - 60 grams', 
N'1. Pом (белый) - 50 мл
2. Медовый сироп - 20 мл
3. Лаймовый сок - 10 мл
4. Лайм - 10 грамм
5. Малина - 35 грамм
6. Дробленый лед - 60 грамм', 'raspberry-daiquiri.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Raspberry daiquiri';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Honey syrup';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Lime juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Golden tequila boom', 
N'Золотая текила бум',150, 
N'Drink quickly while it foams!', 
N'Быстро выпить, пока он пенится!', 
N'1. Pour  gold tequila into a glass and sprite almost to the top
2. Put a napkin on the the rocks glass, cover with hand and hit the glass 3 times on the table quickly and heavily
3. Drink quickly while it foams!', 
N'1. Налить в бокал золотую текилу и спрайт почти доверху
2. Накрыть бокал салфеткой и, придерживая ее сверху, сильно и быстро постучать по столу 3 раза
3. Быстро выпить, пока он пенится!',
N'1. Gold tequila - 50 ml
2. Sprite (soda) - 100 ml', 
N'1. Золотая текила - 50 мл
2. Sprite (содовая вода) - 100 мл', 
'Tequila-Boom.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Golden tequila boom';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Tequila';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite (soda)';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Burning Dr. Pepper', 
N'Горящий доктор Пеппер',150, 
N'Simple, and not very strong cocktail.', 
N'Простой в приготовлении и не очень крепкий.', 
N'1. Fill a glass 2/3 of the way with light beer
2. Pour amaretto liqueur into a shot glass
3. Use bar spoon to layer on 25 ml of overproof rum
4. Set the shot on fire and put it into the highball glass with beer', 
N'1. Налить в стакан светлое пиво на 2/3
2. Налить в стопку ликер амаретто 
3. Используя коктейльную ложку, уложить слой сверхкрепкого рома 
4. Подожечь и опустить стопку в хайбол с пивом',
N'1. Overproof rum - 25 ml
2. Amaretto liqueur - 25 ml
3. Lager beer - 200 ml', 
N'1. Сверхкрепкий ром - 25 мл
2. Ликер амаретто - 25 мл
3. Светлое пиво - 200 мл', 'Burning-Dr-Pepper.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Burning Dr. Pepper';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Amaretto liqueur';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Beer';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Cherry Beer', 
N'Вишневое пиво',160, 
N'Mulled wine is a favourite drink of the Roman emperors.', 
N'Глинтвейн любимым напитком римских императоров.', 
N'1. Pour lemon juice, cherry juice, dark beer into a pitcher
2. Add lemon and orange zests, a cinnamon stick and 5 cloves
3. Stir while heating, but do not bring to the boil
4. Let it chill for 1.5 minutes and pour into an irish coffee glass', 
N'1. Налить в питчер лимонный сок, вишневый сок и темное пиво 
2. Добавить цедру лимона и апельсина, палочку корицы и гвоздику 5 шт
3. Помешивая, нагреть, не доводя до кипения
4. Дать настояться 1,5 минуты и перелить в бокал ',
N'1. Dark beer - 75 ml
2. Cherry juice - 75 ml
3. Lemon juice - 10 ml
4. Cloves - 5 gram
5. Cinnamon sticks - 5 gram
6. Orange zest - 1 pc
7. Lemon zest - 1 pc', 
N'1. Темное пиво - 75 мл
2. Вишневый сок - 75 мл
3. Лимонный сок - 10 мл
4. Гвоздика - 5 грамм
5. Корица в палочках - 5 грамм
6. Апельсиновая цедра - 1 шт
7. Лимонная цедра - 1 шт', 'Cherry_Beer.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Cherry Beer';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Beer';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Cherry juice';
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
VALUES(N'Carlsbad falls', 
N'Карловарская осень',195, 
N'Mulled wine is a favourite drink of the Roman emperors.', 
N'Глинтвейн любимым напитком римских императоров.', 
N'1. Pour lemon juice, orange juice, maple syrup, honey syrup, almond syrup and  light beer into a milk pitcher
2. Add 3 cloves and a cinnamon stick
3. Stir while heating, but do not bring to the boil
4. Fine strain into an irish coffee glass
5. Garnish with an orange wedge, a clove and a cinnamon stick', 
N'1. Налить в питчер лимонный сок, апельсиновый сок, кленовый сироп, медовый сироп, миндальный сироп и светлое пиво 
2. Добавить гвоздику 3 шт и палочку корицы
3. Помешивая нагреть, не доводя до кипения
4. Перелить через ситечко в бокал 
5. Украсить долькой апельсина, гвоздикой и палочкой корицы',
N'1. Lager beer - 50 ml
2. Almond syrup - 15 ml
3. Honey syrup - 15 ml
4. Maple syrup - 5 ml
5. Orange juice - 100 ml
6. Lemon juice - 10 ml
7. Orange - 40 gram
8. Cinnamon sticks - 10 gram
9. Cloves - 3 gram', 
N'1. Светлое пиво - 50 мл
2. Миндальный сироп - 15 мл
3. Медовый сироп - 15 мл
4. Кленовый сироп - 5 мл
5. Апельсиновый сок - 100 мл
6. Лимонный сок - 10 мл
7. Апельсин - 40 грамм
8. Корица в палочках - 10 грамм
9. Гвоздика - 3 грамм', 'carlsbad_falls.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Carlsbad falls';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Beer';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Almond syrup';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Honey syrup';
DECLARE @component4 BIGINT;
SELECT @component4 = Id FROM [CocktailComponents] WHERE [Name] = 'Maple syrup';
DECLARE @component5 BIGINT;
SELECT @component5 = Id FROM [CocktailComponents] WHERE [Name] = 'Orange juice';
DECLARE @component6 BIGINT;
SELECT @component6 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';


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
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component6, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Hot gold', 
N'Горячее золото ',500, 
N'Mulled wine is a favourite drink of the Roman emperors.', 
N'Глинтвейн любимым напитком римских императоров.', 
N'1. Place an orange wheel, 3 bar spoons of vanilla granulated sugar, a cinnamon stick, cloves and a pinch of ground nutmeg into a milk pitcher
2. Pour orange juice, amaretto liqueur and cognac
3. Stir while heating, but do not bring to the boil
4. Pour into a french press together with orange and spices', 
N'1. Положить в питчер кружок апельсина, ванильный сахарный песок, палочку корицы, гвоздику  и щепотку мускатного молотого ореха 
2. Налить апельсиновый сок, ликер амаретто и коньяк 
3. Помешивая, нагреть, не доводя до кипения
4. Перелить вместе с апельсином и специями во френч-пресс',
N'1. Cognac - 50 ml
2. Amaretto liqueur - 50 ml
3. Orange juice - 400 ml
4. Orange - 30 gram
5. Vanilla granulated sugar - 15 gram
6. Cinnamon sticks - 5 gram
7. Cloves - 3 gram
8. Ground nutmeg - 1 gram', 
N'1. Коньяк - 50 мл
2. Ликер амаретто - 50 мл
3. Апельсиновый сок - 400 мл
4. Апельсин - 30 грамм
5. Ванильный сахарный песок - 15 грамм
6. Корица в палочках - 5 грамм
7. Гвоздика - 3 грамм
8. Мускатный молотый орех - 1 грамм', 'Hot-Gold.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Hot gold';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Cognac';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Amaretto liqueur';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Orange juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/