# Crud With Validations Lab

## Objectives

- Build a full CRUD Restuful Controller / Application for a Single Model
- Use the resources generator (not the scaffold one - we should write tests to make sure they didn't use the scaffold generator)
- correctly implement the migrations for Post, Author, Song and Artist
- define post, author, song, and artist model with Validations
- build index, show, new, edit views that interlink using route helpers
- use form_for to build dynamic forms that prefill and display validation errors
- build a delete form or link using button_to or link_to
- build create update and destroy actions that check validation persist the object and render or redirect correctly
- use strong params to safely mass assign form data
- Create a home page and root_path that goes to SiteController#index that has links to the main indexes of each resource.

## Notes

Lab is basically about creating a scaffold for Song, Post, Author, and Artist without using that generator so they have to hand code it based on the resource generator.

the models should have some validations (unique artist name, song title presence, etc)

forms should require some customization in terms of validation messages or errors and just something to make it a little custom.
