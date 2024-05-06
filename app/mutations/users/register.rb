class RegisterUser < Mutations::Command
  required do     
      email: string
      password: string
      password_confirmation: string 
  end

  def validate 
    unless inputs[:password] == inputs[:password_confirmation]
      add_error(:password_confirmation, "Password confirmation doesnt match password")
    end

    if User.exists?(email: inputs[:email])
      add_error(:email, "Email has already baeen taken")
    end
  end

  def execute 
    User.create!(  
        email: inputs[:email]
        password: inputs[:password]
        password_confirmation: inputs[:password_confirmation]
    )
  end
end