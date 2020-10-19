# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Demo.Repo.insert!(%Demo.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Demo.Blog.{Post, Reader, Review}
alias Demo.Repo

reader_1 = %Reader{name: "A", email: "a@gmail.com"} |> Repo.insert!
reader_2 = %Reader{name: "B", email: "b@gmail.com"} |> Repo.insert!
reader_3 = %Reader{name: "C", email: "c@gmail.com"} |> Repo.insert!
reader_4 = %Reader{name: "D", email: "d@gmail.com"} |> Repo.insert!
reader_5 = %Reader{name: "E", email: "e@gmail.com"} |> Repo.insert!
reader_6 = %Reader{name: "F", email: "f@gmail.com"} |> Repo.insert!
reader_7 = %Reader{name: "G", email: "g@gmail.com"} |> Repo.insert!
reader_8 = %Reader{name: "H", email: "h@gmail.com"} |> Repo.insert!
reader_9 = %Reader{name: "I", email: "i@gmail.com"} |> Repo.insert!
reader_10 = %Reader{name: "J", email: "j@gmail.com"} |> Repo.insert!
reader_11 = %Reader{name: "K", email: "k@gmail.com"} |> Repo.insert!
reader_12 = %Reader{name: "L", email: "l@gmail.com"} |> Repo.insert!
reader_13 = %Reader{name: "M", email: "m@gmail.com"} |> Repo.insert!
reader_14 = %Reader{name: "N", email: "n@gmail.com"} |> Repo.insert!
reader_15 = %Reader{name: "O", email: "o@gmail.com"} |> Repo.insert!
reader_16 = %Reader{name: "P", email: "p@gmail.com"} |> Repo.insert!
reader_17 = %Reader{name: "Q", email: "q@gmail.com"} |> Repo.insert!

%Post{title: "Post 1", body: "This is my first blog post", reviews: [
  %Review{star: 4, comment: "Good Post!", reader: reader_1},
  %Review{star: 5, comment: "Good Post!", reader: reader_2},
  %Review{star: 5, comment: "Good Post! I like it.", reader: reader_3},
]} 
|> Repo.insert!

%Post{title: "Post 2", body: "This is my second blog post", reviews: [
  %Review{star: 4, comment: "Good Post!", reader: reader_4},
  %Review{star: 5, comment: "Good Post!", reader: reader_5},
  %Review{star: 5, comment: "Good Post! I like it.", reader: reader_6},
]} 
|> Repo.insert!

%Post{title: "post 3", body: "this is my third blog post", reviews: [
  %Review{star: 4, comment: "good post!", reader: reader_7},
  %Review{star: 5, comment: "good post!", reader: reader_8},
  %Review{star: 5, comment: "good post! i like it.", reader: reader_9},
]} 
|> Repo.insert!

%Post{title: "post 4", body: "this is my forth blog post", reviews: [
  %Review{star: 4, comment: "good post!", reader: reader_10},
  %Review{star: 5, comment: "good post!", reader: reader_11},
  %Review{star: 5, comment: "good post! i like it.", reader: reader_12},
]} 
|> Repo.insert!

%Post{title: "post 5", body: "this is my fifth blog post", reviews: [
  %Review{star: 4, comment: "good post!", reader: reader_13},
  %Review{star: 5, comment: "good post!", reader: reader_14},
  %Review{star: 5, comment: "good post! i like it.", reader: reader_15},
  %Review{star: 5, comment: "good post! i like it.", reader: reader_16},
]} 
|> Repo.insert!

%Post{title: "post 6", body: "this is my sixth blog post", reviews: [
  %Review{star: 4, comment: "good post!", reader: reader_17},
  %Review{star: 5, comment: "good post!", reader: reader_1},
  %Review{star: 5, comment: "good post! i like it.", reader: reader_2},
  %Review{star: 5, comment: "good post! i like it.", reader: reader_3},
]} 
|> Repo.insert!

%Post{title: "post 7", body: "this is my seventh blog post", reviews: [
  %Review{star: 4, comment: "good post!", reader: reader_17},
  %Review{star: 5, comment: "good post!", reader: reader_1},
  %Review{star: 5, comment: "good post! i like it.", reader: reader_2},
  %Review{star: 5, comment: "good post! i like it.", reader: reader_3},
]} 
|> Repo.insert!
# %Post{title: "Post 3", body: "This is my third blog post"} |> Repo.insert!
# %Post{title: "Post 4", body: "This is my forth blog post"} |> Repo.insert!
# %Post{title: "Post 5", body: "This is my fifth blog post"} |> Repo.insert!
# %Post{title: "Post 6", body: "This is my sixth blog post"} |> Repo.insert!
# %Post{title: "Post 7", body: "This is my seventh blog post"} |> Repo.insert!
# %Post{title: "Post 8", body: "This is my eighth blog post"} |> Repo.insert!
# %Post{title: "Post 9", body: "This is my ninth blog post"} |> Repo.insert!
# %Post{title: "Post 10", body: "This is my tenth blog post"} |> Repo.insert!
