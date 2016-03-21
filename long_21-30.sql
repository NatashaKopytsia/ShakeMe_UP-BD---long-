INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'IQ', 
N'Ай кью',220, 
N'This is a very nice and sweet cocktail.', 
N'Это очень приятный и сладкий коктейль.', 
N'1. Pour ice into a glass
2. Add into a glass vodka, honey syrup
3. Then, add  grapefruit juice and stir the cocktail with a help of the cocktail spoon
4. Decorate with a orange (zest)', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить медовый сироп и водку 
3. Долить грейпфрутовый сок доверху и аккуратно размешать коктейльной ложкой
4. Украсить апельсиновой цедрой',
N'1. Vodka - 50 ml
2. Honey syrup - 20 ml
3. Grapefruit juice - 150 ml
4. Ice (cubes) - 180 grams', 
N'1. Водка - 50 мл
2. Медовый сироп - 20 мл
3. Грейпфрутовый сок - 150 мл
4. Лед в кубиках - 180 грамм',
 'iq.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'IQ';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vodka';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Honey syrup';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Grapefruit juice';


INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)


GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'№1', 
N'№1',225, 
N'№1 - To be the first!', 
N'№1 - Будь первым!', 
N'1. Pour vodka, elderberry syrup, cranberry juice, grapefruit juice, lime juice into a shaker 
2. Add icе and shake well 
3. Then, you must use a strainer 
4. Decorate with a bunch of mint and lemon (zest)', 
N'1. Налить в шейкер лаймовый сок, грейпфрутовый сок, клюквенный морс, сироп бузины и водку 
2. Наполнить шейкер кубиками льда и взбить
3. Перелить через ситечко в стакан
4. Украсить цедрой апельсина и веточкой мяты',
N'
1. Vodka - 50 ml
2. Elderberry syrup - 30 ml
3. Cranberry juice - 50 ml
4. Grapefruit juice - 75 ml
5. Lime juice - 20 ml
6. Ice (cubes) - 350 grams', 
N'1. Водка - 50 мл
2. Сироп бузины - 30 мл
3. Клюквенный морс - 50 мл
4. Грейпфрутовый сок - 75 мл
5. Лаймовый сок - 20 мл
6. Лед в кубиках - 350 грамм',
 'number_one.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = '№1';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vodka';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Elderberry syrup';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Cranberry juice';
DECLARE @component4 BIGINT;
SELECT @component4 = Id FROM [CocktailComponents] WHERE [Name] = 'Grapefruit juice';
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
VALUES(N'Sea breeze', 
N'Морской бриз',200, 
N'Cocktail has a superb sweet and sour taste.', 
N'Коктейль отличается превосходным кисло-сладким вкусом.', 
N'1. Pour ice into a glass
2. Add  vodka, grapefruit juice into a glass
3. Then, add  cranberry juice and stir the cocktail with a help of the cocktail spoon
4. Decorate with a piece of lime', 
N'1. Pour ice into a glass
2. Add  vodka, grapefruit juice into a glass
3. Then, add  cranberry juice and stir the cocktail with a help of the cocktail spoon
4. Decorate with a piece of lime',
N'1. Vodka - 50 ml
2. Cranberry juice - 100 ml
3. Grapefruit juice - 50 ml
4. Ice (cubes) - 180 grams', 
N'1. Водка - 50 мл
2. Клюквенный морс - 100 мл
3. Грейпфрутовый сок - 50 мл
4. Лед в кубиках - 180 грамм', 
'sea-breeze.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Sea breeze';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vodka';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Cranberry juice';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Grapefruit juice';


INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Tequila Madras', 
N'Текила мадрас',200, 
N'It has perfect orange color, pleasant taste and a great flavor.', 
N'It has perfect orange color, pleasant taste and a great flavor.', 
N'1. Pour ice into a glass
2. Add into a tequila and orange juice
3. Then, add  cranberry juice and stir the cocktail with a help of the cocktail spoon
4. Decorate with a circle of orange and cranberry', 
N'1. Наполни хайбол кубиками льда доверху
2. Налить апельсиновый сок и  текилу 
3. Долить клюквенный сок доверху и аккуратно размешай коктейльной ложкой
4. Украсить кружком апельсина и клюквой',
N'1. Tequila - 50ml
2. Orange juice - 75 ml
3. Cranberry juice - 75 ml
4. Ice (cubes) - 180 grams', 
N'1. Текила - 50 мл
2. Апельсиновый сок - 75 мл
3. Клюквенный морс - 75 мл
4. Лед в кубиках - 180 грамм', 'tequila-madras.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Tequila Madras';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Tequila';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Orange juice';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Cranberry juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Screwdriver', 
N'Отвертка',200, 
N'A favorite cocktail Truman Capote (american writer), appeared in the 1940s.', 
N'Любимый коктейль американского писателя Трумана Капоте появился в 1940-х годах.', 
N'1. Pour ice into a glass
2. Add vodka into a glass 
3. Then, add orange juice  and stir the cocktail with a help of the cocktail spoon
4. Decorate with a circle of orange', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить водку 
3. Долить апельсиновый сок доверху и аккуратно размешай коктейльной ложкой
4. Украсить кружком апельсина',
N'1. Vodka - 50 ml
2. Orange juice - 150 ml
3. Ice (cubes) - 180 grams', 
N'1. Водка - 50 мл
2. Апельсиновый сок - 150 мл
3. Лед в кубиках - 180 грамм', 'screwroker. jpg', 1, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Screwdriver';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vodka';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = ' Orange juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Moscow lights', 
N'Московские огни',200, 
N'This is a very nice and sweet cocktail.', 
N'Это очень приятный и сладкий коктейль.', 
N'1. Pour ice into a glass
2. Add vodka into a glass vodka
3. Then, add orange juice  and stir thecocktail with a help of the cocktail spoon
4. Decorate with a circle of orange', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить ананасовый сок, кокосовый ликер и дынный ликер 
3. Долить апельсиновый сок доверху и размешать коктейльной ложкой
4. Укрась большой долькой апельсина и кружком лайма',
N'1. Melon liqueur - 25 ml
2. Coconut liqueur - 25ml
3. Orange juice - 75 ml
4. Pineapple juice - 75 ml
5. Ice cubes - 180 grams', 
N'1. Дынный ликер - 25 мл
2. Кокосовый ликер - 25 мл
3. Апельсиновый сок - 75 мл
4. Ананасовый сок - 75 мл
5. Лед в кубиках - 180 грамм', 'moskov_light.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Moscow lights';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Melon liqueur';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = ' Coconut liqueur';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Orange juice';
DECLARE @component4 BIGINT;
SELECT @component4 = Id FROM [CocktailComponents] WHERE [Name] = 'Pineapple juice';


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
VALUES(N'Rum Cola', 
N'Ром кола',200, 
N'Rum Cola is a traditional Cuban drink. Simple, and not very strong cocktail.', 
N'Ром кола - это кубинский напиток. Простой в приготовлении и не очень крепкий.', 
N'1. Pour ice into a glass
2. Add rum (white), lime juice into a glass
3. Then, add Coca-Cola and stir the cocktail with a help of the cocktail spoon
4. Decorate with a circle of lime ', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить лаймовый сок и белый ром 
3. Долить колу доверху и аккуратно размешать коктейльной ложкой
4. Украсить 2 кружочками лайма',
N'1. Rum - 50 ml
2. Lime juice - 10 ml
3. Coca-Cola - 140 ml
4. Ice (cubes) - 180 grams', 
N'1. Pом (белый) - 50 мл
2. Лаймовый сок - 10 мл
3. Кока-Кола - 140 мл
4. Лед в кубиках - 180 грамм', 'rum-and-cola.jpg', 1, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Rum Cola';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Lime juice';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Coca-Cola';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component3, @cocktailId);

GO

 /*****************************/INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Strawberry lemonade', 
N'Клубничный лимонад',220, 
N'Strawberry lemonade - To have fun!', 
N'Клубничный лимонад - Получай удовольствие!', 
N'1. Pour strawberries (3 berry), lime ( 3 piece) into a glass and press
2. Then, add  ice (crushed)
3. Add strawberry syrup, Sprits (soda) and stir the cocktail with a help of the cocktail spoon
4. Decorate with a piece of lime and strawberries and a bunch of mint', 
N'1. Положить в cтакан клубнику (3 ягоды) и лайм (3 дольки). Подавить
2. Добавить дробленый лед доверху
3. Налить клубничный сироп и содовую доверху и аккуратно размешать коктейльной ложкой
4. Украсить половинкой ягоды клубники, листиком мяты и долькой лайма',
N'1. Strawberry syrup - 20 ml
2. Sprite (soda) - 200 ml
3. Lime - 80 grams
4. Strawberries - 70 grams
5. Ice (crushed) - 200 grams', 
N'1. Клубничный сироп - 20 мл
2. Sprite (cодовая вода) - 200 мл
3. Лайм - 80 грамм
4. Клубника - 70 грамм
5. Лед дробленый - 200 грамм', 'Strawberry-Lemonade.jpg', 0, 0);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Strawberry lemonade';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Strawberry syrup';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite (soda)';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Mojito (nonalcoholic)', 
N'Мохито (безалкогольный)',150, 
N'Mojito is a traditional Cuban drink. A special role is played a combination of lime and mint. This cocktail is popular all over the world.', 
N'Мохито традиционный кубинский напиток.Главную роль играет вкусовое сочетание лайма и мяты, именно благодаря этим двум ингредиентам коктейль и приобрел всемирную популярность.', 
N'1. Pour sugar into a glass
2. Cut the lime into two halves,
juice of one of them squeeze into 
the glass.
3. Add the mint leaves in a glass
4. Fill a glass 1/3 crushed ice, put on
the ice a few slices of lime.
5. Then, add Sprite.
6. The glass decorate with mint and a slice of lime', 
N'1. Насыпьте в бокал сахар. 
2 .Разрежьте лайм на две половинки, 
сок одной из них отожмите в бокал, 
вторую нарежьте дольками. 
3. Добавьте в бокал листики мяты 
4. Наполните бокал на одну треть 
измельченным льдом, на лед положите
несколько долек лайма. 
5. Добавьте Sprite
6. Край бокала украсьте листиками мяты 
и ломтиком лайма.',
N'1. A bunch of mint
2. 2-3 tsp brown sugar
3. Juice half a lime
4. Sprite (soda) - 150 ml  
5. Ice - 200 grams', 
N'1. Пучок мяты
2. 2-3 ч.л. коричневого сахара 
3. Cок половинки лайма
4. Sprite (содовая вода) - 150 мл
5. Лед - 200 грамм', 'mojito_without_alk.jpg', 1, 0);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Mojito (nonalcoholic)';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite (soda)';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

 /*****************************/
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Coconut apple', 
N'Кокосовое яблоко',200, 
N'This is a very nice and sweet cocktail.', 
N'Это очень приятный и сладкий коктейль.', 
N'1. Pour sugar into a glass
2. Then, add coconut liqueur
3. Add apple juice and stir the cocktail with a help of the cocktail spoon 
4. Decorate with a piece of apple', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить кокосовый ликер 
3. Долить яблочный сок доверху и аккуратно размешать коктейльной ложкой
4. Украсить веером из долек яблока',
N'1. Coconut liqueur - 50 ml
2. Apple juice - 150 ml
3. Ice (cubes) - 180 grams', 
N'. Кокосовый ликер - 50 мл
2. Яблочный сок - 150 мл
3. Лед в кубиках - 180 грамм', 'apple_cocount.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Coconut apple';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Coconut liqueur';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Apple juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/