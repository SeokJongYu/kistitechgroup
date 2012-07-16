namespace :db do
  desc "Fill database with admin data"
  task populate: :environment do
    admin = User.create!(name: "Seok Jong Yu",
                         email: "seokjongyu@gmail.com",
                         password: "1234",
                         password_confirmation: "1234")
    admin.toggle!(:admin)
  end
end
