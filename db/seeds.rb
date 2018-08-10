
@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Smith",
                    phone: "0123456789")
puts "1 User created"
100.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"
AdminUser.create(email: "admin@example.com", password: "password",
                password_confirmation: "password", first_name: "Admin", last_name: "Me", type: "AdminUser",
                phone: "0123456789"))

puts "Created 1 Admin User"
