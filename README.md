![](https://img.shields.io/badge/Microverse-blueviolet)

# Recipe App

> The Recipe app keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## Built With

- Ruby >= 3.0.0
- Ruby on Rails >= 6.1.3.1
- Rails Active Storage

## Live Demo

[Recipe App](https://aj-recipeapp-staging.herokuapp.com/)

## Getting Started

1. Get the project clone link [clone link](https://github.com/Adanzeakonobi/Recipe-App.git)
2. Open your terminal and change your working directory to the location of the project.
3. Clone the repository
4. Install project gems
5. Start the server by running

```bash
git clone https://github.com/Adanzeakonobi/Recipe-App.git
cd Recipe-App
bundle install
rails server

```

### Prerequisites

- A github account
- Ruby and Ruby on Rails installed on your computer
- A terminal with your github account logged in

### Setup

- Use your github account and your terminal to clone this repository to your computer:

`git clone https://github.com/Adanzeakonobi/Recipe-App`

- Go to the cloned directory:
  `cd mv-rb_Blog`

- Run `yarn install` to install the project dependencies

- Run `rails db:create` to create the database

- Run `rails db:migrate` to create the tables

- Run `rails s` and go to `http://127.0.0.1:3000`.

### Troubleshooting

#### Error "Webpacker::Manifest::MissingEntryError" on starting application

- stop the web app
- run `bundle exec rake webpacker:install`
- run `rails s`

## Author

👤 **Adaobi Vivian Okoye**

- GitHub: [@githubhandle](https://github.com/adanzeakonobi)
- Twitter: [@twitterhandle](https://twitter.com/Adaebubemmuta)
- LinkedIn: [LinkedIn](https://linkedin.com/in/okoyeaadaobi)

👤 **Joshua Ivie**

- GitHub: [@joshuaivie](https://github.com/joshuaivie)
- Twitter: [@joshuaivie\_](https://twitter.com/joshuaivie_)
- LinkedIn: [joshuaivie](https://linkedin.com/in/joshuaivie)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](lic.url) licensed.
