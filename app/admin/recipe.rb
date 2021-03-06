ActiveAdmin.register Recipe do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :ingredient, :steps, :image, :url
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  # Table name: recipes
  #
  #  id         :integer          not null, primary key
  #  name       :string
  #  ingredient :text
  #  steps      :text
  #  user_id    :integer
  #  image      :string
  #  url        :string
  #  created_at :datetime         not null
  #  updated_at :datetime         not null

  index do
      selectable_column
      column :name
      column :user_id
      column :ingredient
      column :steps
      column :image
      actions
    end
end
