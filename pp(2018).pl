item(pc,50000,25).
item(laptop,75000,35).
item(mouse,750,42).
item(keyboard,500,37).
item(sdcard_8gb,800,22).
item(sdcard_32gb,1750,30).
item(printer,32000,0).
item(scanner,16000,0).
item(webcam,10000,15).
item(headset,3000,20).


split_list([],[],[]).
split_list([H|T],[H|L1],L2):-split_list(T,L2,L1).

available_item(Item):-item(Item,_,Quantity),Quantity>0.


price_list([],[]).
price_list([IH|IT],[PH|PT]):-item(IH,PH,_),price_list(IT,PT).


total_price([],0).
total_price([Item,Qty|T],Total):-
    item(Item,Price,_),
    total_price(T,SubTotal),
    Total is SubTotal+(Price*Qty).


discount(Total,0):-Total<50000.
discount(Total,5):-Total>=50000,Total<100000.
discount(Total,10):-Total>=100000,Total<200000.
discount(Total,15):-Total>=200000,Total<300000.
discount(Total,20):-Total>=300000.


payable_amount([ItemList],Payable):-
   total_price(ItemList,Total),
   discount(Total,D),
   Payable is Total-Total*(D/100).
