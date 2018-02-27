namespace :dev do
  desc "Polula o banco no modo dev"
  task setup: :environment do
    p 'criando contatos...'
    100.times do |i|
      p "#{i}"
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(65.years.ago, 18.years.ago ),
      )
    end
    p 'criado...'
  end

end
