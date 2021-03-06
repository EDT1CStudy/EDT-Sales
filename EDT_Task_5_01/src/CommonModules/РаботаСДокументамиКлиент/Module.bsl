
#Область ПрограммныйИнтерфейс
	
	Процедура РассчитатьСумму(СтрокаТабличнойЧасти) Экспорт
		СтрокаТабличнойЧасти.Сумма = СтрокаТабличнойЧасти.Количество * СтрокаТабличнойЧасти.Цена;
	КонецПроцедуры

	Процедура РассчитатьЦену(СтрокаТабличнойЧасти) Экспорт
		Если СтрокаТабличнойЧасти.Количество <> 0 Тогда
			СтрокаТабличнойЧасти.Цена = СтрокаТабличнойЧасти.Сумма / СтрокаТабличнойЧасти.Количество;
		Иначе
			СтрокаТабличнойЧасти.Сумма = 0;	
		КонецЕсли;
	КонецПроцедуры

	Процедура ОбновитьСуммуДокумента(Объект) Экспорт
		Объект.СуммаДокумента = Объект.Товары.Итог("Сумма");	
КонецПроцедуры

#КонецОбласти
