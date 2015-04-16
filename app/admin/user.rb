ActiveAdmin.register User do
scope :admin_only
scope :non_admin
scope :name_guest

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
   permit_params :name, :email, :admin, :username
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  # Table name: users
  #
  #  id              :integer          not null, primary key
  #  name            :string
  #  username        :string
  #  email           :string
  #  admin           :boolean
  #  created_at      :datetime         not null
  #  updated_at      :datetime         not null
  #  password_digest :string
  #
  index do
      selectable_column
      column :admin
      column :name
      column :username
      column :email
      actions
    end

end
