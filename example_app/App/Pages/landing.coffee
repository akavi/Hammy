class LandingPage extends Hammy.Page
  scripts: ['main.js']
  styles: ['main.css']
  children: [HomeProjectFragment, HomePostFragment]

  initialize: (options)->
    @projects = options.projects
    @posts = options.posts

  render: ->
    super

    for project in @projects
      @$('.h-projects').append new LandingProjectFragment project: project
    for post in @posts
      @$('.h-projects').append new LandingPostFragment project: project
