/*Добавляем коктейль1*/
INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Pina colada', 
N'Пина колада', 150, 
N'Pina colada  is traditional Carib alcoholic cocktail. The pina colada is a sweet cocktail.', 
N'Пина колада - традиционный карибский алкогольный коктейль. Пина колада является сладким коктейлем.', 
N'1.Fill in a blender or shaker with crushed ice
2.Pour 90 ml of pineapple juice
3.Pour 30 ml  of white rum 
4.Pour 30 ml of coconut milk and 
blend or shake very well until smooth
5. Pour into chilled glass, garnish with pineapple wedge and/or a maraschino cherry', 
N'1. В шейкер насыпать лед
2. Налить 90 мл ананасового сока
3. Налить 30 мл белого рома
4. Налить 30 мл кокосового молочка и перемешайте
5. Подавать в охлажденном бакал, в качестве украшения использовать ананас и/или коктельную вишенку',
N'1. White rum - 30 ml
2. Coconut milk - 30 ml
3. Pineapple juice - 90 ml
4. Ice - 60 grams', 
N'1. Белый ром – 30 мл
2. Кокосовое молочко – 30 мл
3. Ананасовый сок – 90 мл
4. Лед - 60 грамм', 'pina_colada.jpg', 1, 1);

GO

/*Связываем компоненты и коктейли*/
DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Pina colada';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'White rum';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Coconut milk';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Pineapple juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

/*Добавляем коктейль2*/
INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Mojito', 
N'Мохито', 150, 
N'Mojito is a traditional Cuban drink. A special role is played a combination of lime and mint.This cocktail is popular all over the world.', 
N'Мохито традиционный кубинский напиток. Главную роль играет вкусовое сочетание лайма и мяты, именно благодаря этим двум ингредиентам коктейль и приобрел всемирную популярность.', 
N'1. Pour sugar into a glass
2. Cut the lime into two halves, juice of one of them squeeze into the glass.
3. Add the mint leaves in a glass
4. Fill a glass 1/3 crushed ice, put onthe ice a few slices of lime.
5. Add the rum, and then water.
6. The glass decorate with mint and a slice of lime.', 
N'1. Насыпьте в бокал сахар. 
2 .Разрежьте лайм на две половинки, сок одной из них отожмите в бокал, вторую нарежьте дольками. 
3. Добавьте в бокал листики мяты 
4. Наполните бокал на одну треть измельченным льдом, на лед положитенесколько долек лайма. 
5. Добавьте ром, а потом воду.
6. Край бокала украсьте листиками мяты и ломтиком лайма.',
N'1. A bunch of mint
2. 2-3 tsp brown sugar
3. Juice half a lime
4. White rum - 50 ml
5. Sprite - 100 ml  
6. Ice - 200 grams', 
N'1. Пучок мяты
2. 2-3 ч.л. коричневого сахара 
3. Cок половинки лайма
4. Белый ром - 50 мл
5. Sprite - 100 мл
6. Лед - 200 грамм', 
'mojito.jpg', 1, 1);

GO

/*Связываем компоненты и коктейли*/
DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Mojito';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'White rum';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite';
INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

/*Добавляем коктейль3*/
INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'B-Ocean', 
N'Голубой океан', 210, 
N'The original combination of grape juice and "Becherovka".',
N'Оригинальное сочетание виноградного сока и «Бехеровки».',
N'You have to mix Becherovka, grape juice
liquor "Blue Curacao", Sprite
and ice in a shaker. Then, shake well.
For decoration you can use orange.',
N'Бехеровку, ликёр "Блю Кюрасао", Sprite, 
виноградный сок и  лед смешать в шейкере, 
хорошо встряхнуть. Для украшения можно
использовать апельсин',
N'1. Becherovka - 40 ml
2. Liqueur "Blue Curacao" - 20 ml
3. Sprite - 100 ml
4. Grape juice - 50 ml
5. Ice', 
N'1. Бехеровка - 40 мл
2. Ликёр "Блю Кюрасао" - 20 мл 
3. Sprite - 100 мл 
4. Виноградный сок - 50 мл
5. Лед',
'blue_ocean.jpg', 0, 1);

GO

/*Связываем компоненты и коктейли*/
DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'B-Ocean';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Becherovka';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Liqueur "Blue Curacao"';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Grape juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

/*Добавляем коктейль4*/
INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Long Island Iced Tea',
 N' Лонг Айленд Iced Tea', 190,
 N'A Long Island Iced Tea is a type of alcoholic mixed drink. It is so named because of the resemblance to the color and taste of iced tea and very strong cocktail.',
 N'Лонг Айленд Iced Tea является алкогольным смешанный напиток.Он назван так из-за сходства с цветом и вкусом чая со льдом и  этот коктейль очень крепким.',
 N'You have to mix rum, vodka, gin tequila, liqueur Cointreau, lemon juice and ice in a shaker. Then, shake well and add Coca-Cola. For decoration you can use lemon.',
 N'Ром, водку, ликер "Cointreau", лимонный сок и  лед смешать в шейкере, хорошо встряхнуть. Потом добавить Кока-Колу. Для украшения можно использовать лимон.',
 N'1. Rum (white) - 20 ml
2. Vodka - 20ml
3. Gin - 20 ml
4. Tequila (white) - 20 ml
5. Liqueur Cointreau - 20 ml
6. Lemon juice - 30 ml
7. Coca-Cola - 60 ml
8. Ice - 200 grams',
 N'1. Ром (белый) - 20 мл
2. Водка - 20 мл
3. Джин - 20 мл
4. Текила (белая) - 20 мл
5. Ликёр Cointreau - 20 мл
6. Сок лимона - 30 мл
7. Кока-Кола - 60 мл
8. Лед - 200 грамм', 'long-island-iced-tea.jpg', 1, 1);

GO

/*Связываем компоненты и коктейли*/
DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Long Island Iced Tea';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vodka';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Gin';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Tequila (white)';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Liqueur Cointreau';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Coca-Cola';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

/*Добавляем коктейль5*/
INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Blue Lagoon',
 N'Голубая Лагуна', 210, 
 N'Cocktail "Blue Lagoon" is a wonderful refreshing drink for hot and sultry summer days. It has perfect blue color, pleasant taste and a great flavor.',
 N'Коктейль "Голубая Лагуна" - прекрасный освежающий напиток для жарких и душных летних дней. Имеет безупречный голубой цвет, приятный вкус и великолепный аромат. ',
 N'1. You have to mix liqueur "Blue Curacao", vodka,  lemon juice in a shaker. 
2. Then, shake well and add Sprite and Icе.
3. For decoration you can use lemon.
4. You should drink "Blue Lagoon" with the help of the tube.',
 N'1. Ликер "Блю Кюрасао", водку, лимонный сок смешать в шейкере.
2. Затем, взболтать и добавить Sprite и лед.
3. Для украшения можно использовать лимон.
4. Пить "Голубую лагуну" нужно с помощью трубочку.',
N'1. Vodka - 60 ml
2. Liqueur "Blue Curacao" - 30 ml
3. Lemon juice - 20 ml
4. Sprite - 100 ml
5. Ice - 200 grams', 
N'1. Водка - 60 мл
2. Ликёр "Блю Кюрасао" - 30 мл 
3. Лимонный сок -  20 мл
4. Sprite - 100 мл 
5. Лед - 200 грамм',
'blue_lagoon.jpg', 1, 1);

GO

/*Связываем компоненты и коктейли*/
DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Blue Lagoon';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vodka';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Liqueur "Blue Curacao"';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

/*Добавляем коктейль6*/
INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Tom Collins', 
N'Том Коллинз', 200, 
N'Collins - a name for the category cocktail of strong alcohol, lemon juice, sugar, and soda.',
N'Коллинз -  название для целой категории коктейлей, состоящих из крепкого алкоголя, лимонного сока, сахара и содовой.',
N'You have to mix gin, sugar syrup in a shaker. Then, add Sprite, Ice and shake well. For decoration you can use lemon.',
N'В шейкере смешать джин и сироп. Добавить содовую воду и ещё раз тщательно перемешать. Перелить в бокал со льдом, украсить дольками лимона.',
N'1. Gin - 50 ml
2. Sugar syrup - 25 ml
3. Lemon juice - 25 ml
4. Sptite - 100 ml
5. Ice - 380 grams', 
N'1. Джин - 50 мл
2. Сахарный сироп - 25 мл
3. Лимонный сок - 25 мл
4. Sprite - 100 мл
5. Лед - 380 грамм',
 'tom_collins.jpg', 0, 1);

GO

/*Связываем компоненты и коктейли*/
DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Tom Collins';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Gin';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sugar syrup';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sptite';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

/*Добавляем коктейль7*/
INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Sex on the Beach',
N'Секс на пляже', 155, 
N'This is a very nice and sweet cocktail.',
N'Это очень приятный и сладкий коктейль.',
N'1. You have to mix cranberry juice, pineapple juice, peach liqueur and vodka
2. Then, add Icе and shake well 
3. Decorate with a piece of pineapple and a piece of raspberries on a cocktail tube.
4. You should drink "Sex on the Beach " with the help of the tube.',
N'1. Налить в шейкер клюквенный сок, ананасовый сок, персиковый ликер и водку 
2. Наполнить шейкер кубиками льда и взбить
3. Украсить кусочком ананаса и ягодой малины на коктейльной шпажке
4. Пить "Cекс на пляже"нужно с помощью трубочку.',
N' 
1. Vodka - 50 ml
2. Peach liqueur - 25 ml
3. Pineapple juice - 40 ml
4. Cranberry juice - 40 ml
5. Ice - 350 grams', 
N'
1. Водка - 50 мл
2. Персиковый ликер - 25 мл
3. Ананасовый сок - 40 мл
4. Клюквенный морс - 40 мл
5. Лед - 350 грамм', 
'sex_on_the_beach.jpg', 1, 1);

GO

/*Связываем компоненты и коктейли*/
DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Sex on the Beach';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Vodka';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Peach liqueur';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Pineapple juice';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Cranberry juice';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

/*Добавляем коктейль8*/
INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Gin fizz',
 N'Джин физ', 170,
 N'Cocktail has a superb sweet-sour taste.',
 N'Коктейль отличается превосходным кисло-сладким вкусом',
 N'
1. Pour ice into a glass
2. You have to mix gin, Ssgar syrup and soda
3. Squeeze 1/4 lemon
4. Stir the cocktail with a help of the cocktail spoon
5. Decorate with a piece of lemon',
 N'1. Наполнить стакан кубиками льда доверху
2. Налить джин, сахарный сироп и содовую доверху
3. Выжать 1/4 лимона
4. Размешать коктейльной ложкой
5. Украсить долькой лимона',
 N'1. Gin - 50 ml
2. Sugar syrup - 20 ml
3. Sprite (soda) - 100 ml
4. Ice - 200 grams',
 N'1. Джин - 50 мл
2. Сахарный сироп - 20 мл
3. Sprite (cодовая вода) - 100 мл
4. Лед - 200 грамм',
 'gin_fizz.jpg', 0, 1);

GO

/*Связываем компоненты и коктейли*/
DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Gin fizz';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Gin';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sugar syrup';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sprite (soda)';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

/*Добавляем коктейль9*/
INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Gin peach tea', 
N'Джин персиковый чай', 200, 
N'The original combination of gin and  peach ice tea.',
N'Оригинальное сочетание джина и холодного персикового чая.',
N'1. Pour ice into a glass
2. You have to mix gin, sugar syrup, lemon juice and peach ice tea 
3. Stir the cocktail with a help of the cocktail spoon
4. Decorate with a piece of lemon',
N'1. Наполнить стакан кубиками льда доверху
2. Налить: лимонный сок, сахарный сироп, джин и  холодный персиковый чай  
3. Размешать коктейльной ложкой
5. Украсить долькой лимона',
N'
1. Gin - 50 ml
2. Sugar syrup - 15 ml
3. Lemon juice - 15 ml
4. Peach ice tea - 120 ml
5. Ice - 180 grams',
N'1. Джин - 50 мл
2. Сахарный сироп - 15 мл
3. Лимонный сок - 15 мл
4. Холодный персиковый чай - 120 мл
5. Лед - 180 грамм', 
'peach_tea.jpg', 0, 1);

GO

/*Связываем компоненты и коктейли*/
DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Gin peach tea';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Gin';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sugar syrup';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Lemon juice';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Peach ice tea';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);

GO

/*Добавляем коктейль10*/
INSERT INTO [Cocktails](Name, NameRu, Volume, [Subject], SubjectRu, [Description], DescriptionRu, HowToCreate, HowToCreateRu, [Image], TopRated, Alcoholic)
VALUES(N'Pink Panther',
N'Розовая пантера ', 180,
N'This is a very nice and sweet cocktail.', 
N'Это очень приятный и сладкий коктейль.', 
N'1. You have to mix gin, orange juice, strawberry liqueur, orange liqueur.
2. Then, add icе and shake well.
3. Then, add a sparkling wine (champagne)
4. Pour into chilled glass, garnish with whipped cream and a maraschino cherry', 
N'1. Налить в шейкер лед, джин, клубничный ликер, апельсиновый ликер и апельсиновый сок. Встряхнуть
2. Добавить игристое вино (шампанское)
3. Перелить в предварительно охлажденный бокал
4. Последний штрих — «шапка» из взбитых сливок и вишня в качестве украшения', 
N'1. Sparkling wine (champagne) - 40 ml
2. Gin - 40 ml
3. Strawberry liqueur - 25 ml
4. Orange liqueur - 25 ml
5. Оrange juice - 50 ml
6. Whipped cream
7. Ice - 180 grams',
N'1. Игристое вино (шампанское) - 40 мл
2. Джин - 40 мл 
3. Клубничный ликер - 25 мл 
4. Апельсиновый ликер - 25 мл 
5. Апельсиновый фреш - 50 мл 
6. Взбитые сливки 
7. Лед - 180 грамм', 
'rozovaya-pantera.jpg', 0, 1);

GO

/*Связываем компоненты и коктейли*/
DECLARE @cocktailId BIGINT;
SELECT @cocktailId = Id FROM [Cocktails] WHERE [Name] = 'Pink Panther';

DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Sparkling wine (champagne)';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Gin';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Strawberry liqueur';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Orange liqueur';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Оrange juice';
DECLARE @component1 BIGINT;
SELECT @component1 = Id FROM [CocktailComponents] WHERE [Name] = 'Whipped cream';

INSERT INTO [CocktailIngredients](ComponentId, CocktailId)
VALUES(@component1, @cocktailId);


