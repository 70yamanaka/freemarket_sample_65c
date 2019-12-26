FactoryBot.define do

  factory :user do
    id                    {"1"}
    nickname              {"abe"}
    sequence(:email) { |n| "hiro#{n}@example.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    image                 {"hhhddddd"}
    name_family           {"tanaka"}
    name_last             {"jiiiii"}
    name_kana_f           {"jjjjjj"}
    name_kana_l           {"kdkdkd"}
    birthday_y            {"1998"}
    birthday_m            {"04"}
    birthday_d            {"23"}
    encrypted_password    {"kjshfs"}
    created_at            {"20111111"}
    updated_at            {"20111111"}

  end

end