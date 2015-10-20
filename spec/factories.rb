FactoryGirl.define do
  factory(:question) do
    inquiry("How old is the moon?")
    user("Dave")
  end

  factory(:user) do
    name("Dave")
    email("dave@dave.com")
    password_digest("password")
  end
end
