next_to(X, Y, List) :- iright(X, Y, List).
next_to(X, Y, List) :- iright(Y, X, List).
iright(L, R, [L | [R | _]]).
iright(L, R, [_ | Rest]) :- iright(L, R, Rest).

myprogram(Miners) :- =(Miners,[[texan, _, _, _, _], [_, _, _, _, _], [_, _, _, may, _], [_, _, _, _, _], [_, _, _, _, _], [_, _, _, _, _]]),

% 1. The canadian lives in the house 
member([canadian, _, _, _, house], Miners),

% 2. The Coloradan brought some chickens with him
member([coloradan, chicken, _, _, _], Miners),

% 3. The hotel is to the left of the cave
iright([_, _, _, _, hotel],[_, _, _, _, cave], Miners),

% 4. The gold miner that owns the goat lives next to the one that owns the chickens
% I added the condition coloradan in the second list be sue in # 2 it says that coloradan brought chicken so they have to be in the same list 
next_to([_, goat, _, _, _], [coloradan, chicken, _, _, _], Miners),

% 5. The gold miner who lives in the hotel was born in september
member([_, _, _, september, hotel], Miners),

% 6. The mexican plays the guitar 
member([mexican, _, guitar ,_ ,_], Miners),

% 7. The gold miner that plays the banjo was born in april
member([_, _, banjo, april, _], Miners),

% 8. The gold miner who plays the flute brought along a horse
member([_, horse, flute, _, _], Miners),

% 9. THe alaskan was born in august
member([alaskan, _, _, august, _], Miners),

% 10 The gold miner who lives in the tent plays violin
member([_, _, violin, _,tent], Miners),

% 11 The gold miner that lives in the third dwelling was born in may this is done at the very first
% 12 The texan lives in the first dwelling  this was also done at the beginning when defining the list 

% 13 The gold miner that plays the harmonica lives next to the one that  has a donkey
next_to([_, _, harmonica, _, _], [_, donkey, _, _, _], Miners),

% 14 The gold miner that owns the cow lives next to the one that plays the violin.
next_to([_, cow, _, _, _], [_, _, violin, _, _], Miners),

% 15 The gold miner that was born in january plays the accordion
member([_, _, accordion, january, _], Miners),

% 16 The nebraskan lives in a cabin 
member([nebraskan, _, _, _, cabin], Miners),

% 17 The Texan lives next to the shack
next_to([texan, _, _, _, _], [_, _, _, _, shack], Miners),

% 18 The gold miner that plays the harmonica has a neighbor that was born in march
next_to([_, _, harmonica, _, _], [_, _, _, march,_], Miners). 



