#encoding: utf-8

class CreatePlatformCategories < ActiveRecord::Migration
  def up
    create_table :platform_categories do |t|
      t.string :title
      t.integer :pos, default: 99

      t.timestamps
    end

    add_index(:platform_categories, [:id, :pos])
    add_index(:platform_categories, :pos)

    categories = [
        'Общение и знакомства',
        'Новости',
        'Дом и семья',
        'Развлечения',
        'Спорт',
        'Авто',
        'Кино и ТВ',
        'Игры',
        'Образование и наука',
        'Музыка',
        'Путешествия',
        'Техника и Софт',
        'Для женщин',
        'Фото',
        'Трафикообменки',
        'Работа и бизнес',
        'Книги и журналы',
        'Файлообменники',
        'Неформат',
        'Карантин',
        'Мультфильмы',
        'Кулинария',
        'Интересные факты',
        'Мода и косметика',
        'Для мам',
        'Гороскопы',
        'Массовый посев',
        'Иностранные сайты',
        'Украинские'
    ]
    puts "Import [#{categories.length}] categories to platform_categories table"
    categories.each_with_index do |category, index|
      PlatformCategory.find_or_create_by_title({title: category}, without_protection: true)
      puts "[#{index + 1}] #{category} "
    end

  end

  def down
     drop_table :platform_categories
  end
end
