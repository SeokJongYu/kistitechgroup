namespace :db do
  desc "Fill database with admin data"
  task populate: :environment do
    admin = User.create!(name: "Seok Jong Yu",
                         email: "seokjongyu@gmail.com",
                         password: "123456789",
                         password_confirmation: "123456789")
    admin.toggle!(:admin)
  end
end
