Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # As a user, I can list tasks
  get 'tasks', to: 'tasks#index'

  # As a user, I can view the details of a task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: :task # we need to rename our show  so that it would not conflict with index


  # As a user, I can add a new task
  post 'tasks', to: 'tasks#create'


  # As a user, I can edit a task (mark as completed / update title & details)
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'


  # As a user, I can remove a task
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete_task
end
