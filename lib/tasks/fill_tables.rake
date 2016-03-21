namespace :fill do
  desc "Adds records to subjects table."
  task :subjects_table => :environment do
    {
      "Mathematics" => "Математика",
      "Computer science" => "Информатика",
      "Economy" => "Экономика",
      "Languages" => "Иностранные языки",
      "History" => "История",
      "Philosophy" => "Философия",
      "Design" => "Дизайн",
      "Medicine" => "Медицина"
    }.each_pair do |en, ru|
      Subject.create!(name_ru: ru, name_en: en)
    end
  end
end
