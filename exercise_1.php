<?php

/**
 * Функция возвращает указанное количество самых часто встречаемых слов
 * из текста, либо false в случае, если в переданной строке нет слов
 * @param string $text
 * @param int $count
 * @return array|false
 */
function most_frequent_words($text, $count = 5){
    $text_lowercase = mb_strtolower($text);    
    $words = preg_split('~[^\p{L}\p{N}\'"-]+~u', $text_lowercase, -1, PREG_SPLIT_NO_EMPTY);    
    if (count($words) === 0){
        return false;
    }
    $word_counts = array_count_values($words);    
    arsort($word_counts);
    return array_slice($word_counts, 0, $count);    
}

$text = "выражена основная мысль.Олень-северное животное.В летнее время оленям в тайге жарко,а в горах даже в июле холодно. Олень как бы создан для северных просторов,жёсткого ветра,длинных морозных ночей.Олень легко бежит вперёд по тайге,подминает под себя кусты,переплывает быстрые реки.Олень не тонет,потому что каждая его шерстинка-это длинная трубочка,которую внутри наполняет воздух..Нос у оленя покрыт серебристой шёрсткой.Если бы шерсти на носу не было,олень бы его отморозил.";

$most_frequent_words = most_frequent_words($text);

echo 'Текст:<br>';
echo $text;
echo '<br><br>';
echo 'Результат:<br>';
echo "<pre>";
print_r($most_frequent_words);
echo "</pre>";