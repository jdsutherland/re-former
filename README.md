# Re-Former

This is part of the Forms Project in The Odin Project’s Ruby on Rails Curriculum. Find it at http://www.theodinproject.com

## Recap
1. Generate User model
`rails g model User username:string password:string email:string`
2. Add HTML form with authenticity_token w/ system test
    - Add form in app/views/users/new.html.erb
    - Create system test in rspec: `rails g rspec:system creating_users`
    - Handle form submission in UsersController#create
3. Refactor params access using strong params
`params.require(:user).permit(:email, :username, :password)`
4. Refactor HTML form to `form_tag` 
5. Add Bootstrap and style
    - Ref CDN in application.html.erb
