INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Tequila Sunrise', 
N'Текила Санрайз ', 180, 
N'This cocktail is a traditional America drink."Tequila Sunrise" has become famous because of the group Rolling Stones often drank this cocktail. It was a tour of America in 1972.', 
N'Этот коктейль - традиционный американский напиток. "Текила Санрайз" стал известным из-за группы Rolling Stones, музыканты которой часто употребляли его во время своего турне по Америке в 1972 году.', 
N'1. Pour ice into a glass
2. You have to mix tequila and orange juice
3. Then, add Grenadines
4. Stir the cocktail with a help of the cocktail spoon
4. Decorate with a piece of orange', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить текилу и апельсиновый сок
3. Добавь гренадин 
4. Размешать коктейльной ложкой
5. Укрась долькой апельсина',
N'1. Tequila - 50ml
2. Grenadine Syrup - 10 ml
3. Orange juice - 150 ml
4. Ice - 180 grams', 
N'1. Текила - 50 мл
2. Сироп Гренадин  - 10 мл
3. Апельсиновый фреш - 150 мл
4. Лед - 180 грамм',
'tequila-sunrise.jpg' 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Tequila Sunrise';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Tequila';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Grenadine Syrup';
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
 
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Chocolate Coco', 
N'Шоколадный кокос',160, 
N'Soft long drinks for summer meetings.', 
N'Мягкий лонгдринк для летних встреч.', 
N'You have to mix liqueur Malibu, rum (white), lemon juice, pineapple juice, chocolate syrup and ice in a shaker. Then, shake well. For decoration you can use pineapple or coconut.', 
N'Смешать в шейкере ликер Malibu, ром (белый), лимонный сок, ананасовый сок, шоколадный сироп и лед. Затем хорошо встряхнуть. Для украшения можно использовать ананас или кокосовую стружку.',
N'1. Liqueur "Malibu" - 30 ml
2. Rum - 30 ml
3. Lemon juice - 20 ml
4. Pineapple juice - 60 ml
5. Chocolate syrup - 20 ml
6. Ice', 
N'1. Ликер "Malibu" - 30 мл
2. Ром - 30 мл
3. Лимонный сок - 20 мл
4. Ананасовый сок - 60 мл
5. Шоколадный сироп - 20 мл
6. Лед',
'chocolad.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Chocolate Coco';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Liqueur "Malibu"';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';
DECLARE @component4 BIGINT;
SELECT @component4 = Id FROM [CocktailComponents] WHERE [Name] = 'Pineapple juice';
DECLARE @component5 BIGINT;
SELECT @component5 = Id FROM [CocktailComponents] WHERE [Name] = 'Chocolate syrup';

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
VALUES(N'Daiquiri', 
N'Дайкири',105, 
N'Daiquiri is a traditional Cuban drink', 
N'Дайкири - это традиционный кубинский напиток.', 
N'1. You have to mix rum (white), sugar syrup, lime juice
2. Then, add icе and shake well 
3. Decorate with a piece of lime', 
N'1. Налить в шейкер белый ром, сахарный сироп, лаймовый сок
2. Наполнить шейкер кубиками льда и взбить
3. Украсить кусочками лайма',
N'1. Rum - 50 ml
2. Sugar syrup - 20 ml
3. Lime juice - 10 ml
4. Ice - 200 grams', 
N'1. Ром - 60 мл
2. Сахарный сироп - 15 мл
3. Лаймовый сок - 30 мл
4. Лед - 200 грамм', 'daikiri.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Daiquiri';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Sugar syrup';
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
VALUES(N'Daiquiri with grapefruit juice', 
N'Дайкири с грейпфрутовым соком',100, 
N'Daiquiri is a traditional Cuban drink', 
N'Дайкири - это традиционный кубинский напиток.', 
N'1. You have to mix rum (white), sugar syrup, lime juice, grapefruit juice
2. Then, add icе and shake well 
3. Decorate with a piece of lime and/or a maraschino cherry', 
N'1. Налить в шейкер белый ром, сахарный сироп, лаймовый сок, грейпфрутовый сок
2. Наполнить шейкер кубиками льда и взбить
3. Украсить кусочками лайма и/или коктельной вишенкой',
N'1. Rum - 50 ml
2. Sugar syrup - 20 ml
3. Lime juice - 10 ml
4. Grapefruit juice - 20 ml
4. Ice - 200 grams', 
N'1. Ром - 50 мл
2. Сахарный сироп - 20 мл
3. Лаймовый сок - 10 мл
4. Грейпфрутовый сок - 20 мл
4. Лед - 200 грамм', 'daikiri_with_gr.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Daiquiri with grapefruit juice';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Sugar syrup';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Lime juice';
DECLARE @component4 BIGINT;
SELECT @component4 = Id FROM [CocktailComponents] WHERE [Name] = 'Grapefruit juice';

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
VALUES(N'Coconut cranberry', 
N'Кокосовая клюква',200, 
N'The original combination of сoconut liqueur and сranberry juice. ', 
N'Кокосовый вкус и клюква внезапно Вас отправят в отпуск. Оригинальное сочетание кокосового ликера и клюквенного морса.', 
N'1. Pour ice into a glass
2. Then, add ranberry juice and сoconut liqueur 
3. Stir the cocktail with a help of the cocktail spoon
4. Decorate with a piece of lime', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить кокосовый ликер
3. Добавь клюквенный морс
4. Размешать коктейльной ложкой
5. Укрась долькой лайма',
N'1. Coconut liqueur - 50 ml
2. Cranberry juice - 150 ml
3. Ice - 180 grams', 
N'1. Кокосовый ликер - 50 мл
2. Клюквенный морс - 150 мл
3. Лед - 180 грамм', 
'Coconut_cranberry.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Coconut cranberry';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Coconut liqueur';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Cranberry juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Summer fizz', 
N'Летний физ',200, 
N'"Summer fizz" is refreshing  and summer cocktail.', 
N'Летний и освежающий коктейль.', 
N'1. Pour ice into a glass
2. Then, add blackcurrant liquor
3. Add r orange juice and rum  into a shake
4. Then, add icе and shake well 
5. Pour into a glass and add a Sprite (soda)
6. Decorate with a sprig currant', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить черносмородиновый ликер 
3. Налить в шейкер апельсиновый сок и белый ром 
4. Наполнить шейкер кубиками льда и взбить
5. Перелить в стакан
6. Долить содовую доверху
7. Украсить веточкой красной смородины',
N'1. Rum - 50 ml
2. Blackcurrant liquor - 20 ml
3. Orange juice - 80 ml
4. Sprite (coda) - 50 ml
5. Ice - 380 grams', 
N'1. Ром -  50 мл
2. Черносмородиновый ликер - 20 мл
3. Апельсиновый сок - 80 мл
4. Sprite (cодовая вода) - 50 мл
5. Лед - 380 грамм', 'summer_fizzy.jpg' 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Summer fizz';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Blackcurrant liquor';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Orange juice';
DECLARE @component4 BIGINT;
SELECT @component4 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite (coda)';

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
VALUES(N'Basil Smash', 
N'Базиликовый удар',85, 
N'Cocktail has a superb sweet and sour taste.', 
N'Коктейль отличается превосходным кисло-сладким вкусом.', 
N'1. Pour ice into a glass
2. Add  green basil (10 leaves)  into a shaker and half lemon and press 
3. Then, add a gin and sugar syrup 
4. Pour ice into a  shaker and  shake well
5. Then, you must use a strainer 
6. Decorate with a green basil', 
N'1. Наполнить стакан кубиками льда доверху
2. Положить в шейкер зеленый базилик 10 листьев, нарезанную на части половинку лимона и подавить
3. Налить сахарный сироп и джин 
4. Наполнить шейкер кубиками льда и взбить
5. Перелить через ситечко 
6. Украсить листиками базилика',
N'1. Gin - 60 ml
2. Sugar syrup - 25 ml
3. Lemon - 80 grams
4. Green basil - 5 grams
5. Ice (cubes) - 320 grams', 
N'1. Джин - 60 мл
2. Сахарный сироп - 25 мл
3. Лимон - 80 грамм
4. Зеленый базилик - 5 грамм
5. Лед в кубиках - 320 грамм', 'Basil-Smash.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Basil Smash';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Gin';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Sugar syrup';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component2, @cocktailId);

GO

 /*****************************/
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'The green fairy', 
N'Зеленая фея',230, 
N'Cocktail has a superb sweet and sour taste.', 
N'Коктейль отличается превосходным кисло-сладким вкусом.', 
N'1. Pour ice into a glass
2. You have to mix lemon juice, liquor "Blue Curacao", lemon juice, melon liqueur, rum (white), vodka, tequila and absinthe
3. Then, add energy drink and stir the cocktail with a help of the cocktail spoon
4. Decorate with a maraschino cherry and lemon (zest)', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить лимонный сок, ликер «Блю Кюрасао», дынный ликер, белый ром, водку, текилу  и абсент.
3. Долить энергетический напиток доверху и аккуратно размешать коктейльной ложкой
4. Украсить двумя коктейльными вишнями на шпажке и лимонной цедрой',
N'1. Vodka - 15 ml
2. Rum - 15 ml
3. Tequila - 15 ml
4. Absinthe - 15 ml
5. Melon liqueur - 30 ml
6. Liquor "Blue Curacao"- 10 ml
7. Lemon juice - 30 ml
8. Energy drink - 100 ml
9. Ice (cubes) - 150 grams', 
N'1. Водка - 15 мл
2. Ром - 15 мл
3. Текила - 15 мл
4. Абсент - 15 мл
5. Дынный ликер - 30 мл
6. Ликер «Блю Кюрасао» - 10 мл
7. Лимонный сок - 30 мл
8. Энергетический напиток - 100 мл
9. Лед в кубиках - 150 грамм', 'the_green_fairy.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'The green fairy';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vodka';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Absinthe';
DECLARE @component4 BIGINT;
SELECT @component4 = Id FROM [CocktailComponents] WHERE [Name] = 'Melon liqueur';
DECLARE @component5 BIGINT;
SELECT @component5 = Id FROM [CocktailComponents] WHERE [Name] = 'Liquor "Blue Curacao"';
DECLARE @component6 BIGINT;
SELECT @component6 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';
DECLARE @component7 BIGINT;
SELECT @component7 = Id FROM [CocktailComponents] WHERE [Name] = 'Energy drink';
DECLARE @component8 BIGINT;
SELECT @component8 = Id FROM [CocktailComponents] WHERE [Name] = 'Tequila';

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
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component7, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component8, @cocktailId);

GO

 /*****************************/
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Boston tea', 
N'Бостонский чай',215, 
N'Boston tea - "For Freedom!"', 
N'Бостонский чай - "За свободу!"', 
N'1. Pour ice into a glass
2. You have to mix lemon juice, liqueur "Triple Sec", сoffee liqueur, rum (white), vodka, tequila and gin
3. Then, add  Cola-Cola and stir the cocktail with a help of the cocktail spoon', 
N'1. Наполнить стакан кубиками льда доверху
2. Налить лимонный сок, ликер "Triple Sec", кофейный ликер, водку, джин, текилу и белый ром 
3. Долить колу доверху и аккуратно размешай коктейльной ложкой',
N'1. Vodka - 20 ml
2. Gin - 20 ml
3. Tequila - 20 ml
4. Rum - 20 ml
5. Triple Sec liqueur- 20 ml
6. Coffee liqueur - 20 ml
7. Lemon juice - 15 ml
8. Cola-Cola - 80 ml
9. Ice (cubes) - 180 grams', 
N'1. Водка - 20 мл
2. Джин - 20 мл
3. Tекила - 20 мл
4. Ром - 20 мл
5. Ликер Трипл сек - 20 мл
6. Кофейный ликер - 20 мл
7. Лимонный сок - 15 мл
8. Кола-Kола - 80 мл
9. Лед в кубиках - 180 грамм',
 'boston_party.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'The green fairy';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vodka';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Rum (white)';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Triple Sec liqueur';
DECLARE @component4 BIGINT;
SELECT @component4 = Id FROM [CocktailComponents] WHERE [Name] = 'Coffee liqueur';
DECLARE @component5 BIGINT;
SELECT @component5 = Id FROM [CocktailComponents] WHERE [Name] = 'Tequila';
DECLARE @component6 BIGINT;
SELECT @component6 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';
DECLARE @component7 BIGINT;
SELECT @component7 = Id FROM [CocktailComponents] WHERE [Name] = 'Cola-Cola';
DECLARE @component8 BIGINT;
SELECT @component8 = Id FROM [CocktailComponents] WHERE [Name] = 'Gin';

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
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component7, @cocktailId);
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component8, @cocktailId);

GO

 /*****************************/
 INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Mix', 
N'Миксет', 125, 
N'Cocktail has a superb sweet and sour taste.', 
N'Коктейль отличается превосходным кисло-сладким вкусом.', 
N'1. Pour ice into a glass
2. Add  raspberry (4 berries)  into a shaker and press 
3. Then, add a vodka, orange juice, honey syrup, lemon juice
4. Pour ice into a  shaker and  shake well
5. Then, you must use a strainer 
6. Decorate with a circle of orange', 
N'1. Наполнить стакан кубиками льда доверху
2. Положить в шейкер малину 4 ягоды и подавить 
3. Налить в шейкер лимонный сок, апельсиновый сок, медовый сироп и водку 
4. Наполнить шейкер кубиками льда и взбить
5. Перелить в стакан используя ситечко 
6. Украсить кружком апельсина',
N'1. Vodka - 50ml
2. Honey syrup - 10 ml
3. Orange juice - 50 ml
4. Lemon juice -15 ml
5. Raspberry - 20 grams
6. Ice (cubes) - 380 grams', 
N'1. Водка - 50 мл
2. Медовый сироп - 10 мл
3. Апельсиновый сок - 50 мл
4. Лимонный сок -15 мл
5. Малина - 20 грамм
6. Лед в кубиках - 380 грамм', 'mix.jpg', 0, 1);

GO

DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Mix';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vodka';
DECLARE @component2 BIGINT;
SELECT @component2 = Id FROM [CocktailComponents] WHERE [Name] = 'Honey syrup';
DECLARE @component3 BIGINT;
SELECT @component3 = Id FROM [CocktailComponents] WHERE [Name] = 'Orange juice';
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


