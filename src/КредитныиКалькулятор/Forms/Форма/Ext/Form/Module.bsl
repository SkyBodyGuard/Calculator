﻿
&НаКлиенте
Процедура Рассчитать(Команда)
	
	ДеньКредита = ДатаПолученияЗайма;
	СуммаКредита = СуммаЗайма;
	
	Пока НачалоДня(ДеньКредита) <= НачалоДня(ДатаВозвратаЗайма) Цикл
		
		
		Если ДеньНедели(ДеньКредита) < 6 Тогда
		
			КоличествоДнейВГоду = ДеньГода(КонецГода(ДеньКредита));
			ПроцентовВЭтотДень = СуммаКредита * ПроцентнаяСтавка / 100 / КоличествоДнейВГоду;
			
			СуммаКредита = СуммаКредита + ПроцентовВЭтотДень;
		
		КонецЕсли;
		
		ДеньКредита = ДобавитьДень(ДеньКредита);
	
	КонецЦикла;
	
	СуммаКВозврату = СуммаКредита;
	Переплата = СуммаКредита - СуммаЗайма;
	
КонецПроцедуры

&НаКлиенте
Функция ДобавитьДень(Дата)

	Возврат Дата + 60 * 60 * 24;	

КонецФункции // ДобавитьДень()
//Добавили комментарий
//Добавили комментарий ещё