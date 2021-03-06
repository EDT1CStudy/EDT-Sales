#Область ОбработчикиСобытийЭлементовТаблицыФормыТовары

	&НаКлиенте
	Процедура ТоварыНоменклатураПриИзменении(Элемент)
		СтрокаТабличнойЧасти = Элементы.Товары.ТекущиеДанные;
		СтрокаТабличнойЧасти.Цена = РаботаСДокументамиСервер.ПолучитьЦенуНоменклатуры(СтрокаТабличнойЧасти.Номенклатура);
	КонецПроцедуры
	
	&НаКлиенте
	Процедура ТоварыКоличествоПриИзменении(Элемент)
		СтрокаТабличнойЧасти = Элементы.Товары.ТекущиеДанные;
		РаботаСДокументамиКлиент.РассчитатьСумму(СтрокаТабличнойЧасти);
		РаботаСДокументамиКлиент.ОбновитьСуммуДокумента(Объект);
	КонецПроцедуры
	
	&НаКлиенте
	Процедура ТоварыЦенаПриИзменении(Элемент)
		СтрокаТабличнойЧасти = Элементы.Товары.ТекущиеДанные;
		РаботаСДокументамиКлиент.РассчитатьСумму(СтрокаТабличнойЧасти);
		РаботаСДокументамиКлиент.ОбновитьСуммуДокумента(Объект);
	КонецПроцедуры
	
	&НаКлиенте
	Процедура ТоварыСуммаПриИзменении(Элемент)
		СтрокаТабличнойЧасти = Элементы.Товары.ТекущиеДанные;
		РаботаСДокументамиКлиент.РассчитатьЦену(СтрокаТабличнойЧасти);
		РаботаСДокументамиКлиент.ОбновитьСуммуДокумента(Объект);
	КонецПроцедуры

#КонецОбласти