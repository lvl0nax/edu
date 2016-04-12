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

  desc "Adds records to providers table."
  task :providers_table => :environment do
    Provider.create!(
      name_ru: 'Coursera',
      name_en: 'Coursera',
      site: 'https://coursera.org',
      moderated: true,
      description_ru: 'Coursera - это образовательная платформа, которая предлагает всем желающим онлайн-курсы от ведущих университетов и организаций мира.',
      description_en: 'Coursera is an education platform that partners with top universities and organizations worldwide, to offer courses online for anyone to take.'
    )
    Provider.create!(
      name_ru: 'Хекслет',
      name_en: 'Hexlet',
      site: 'https://hexlet.io',
      moderated: true,
      description_ru: 'Хекслет - практические курсы по программированию. Мы помогаем новичкам стать профессиональными программистами, а опытным разработчикам получать новые знания и расти профессионально.',
      description_en: 'Hexlet is a platform for application development exercises. It helps both beginner and advanced developers learn new skills, grow professionally and save time researching new topics.'
    )
  end
end
