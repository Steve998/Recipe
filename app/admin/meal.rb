ActiveAdmin.register Meal do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :user_id, :recipe_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  # Table name: meals
  #
  #  id         :integer          not null, primary key
  #  name       :string
  #  user_id    :integer
  #  recipe_id  :integer
  #  created_at :datetime         not null
  #  updated_at :datetime         not null
  #


end
