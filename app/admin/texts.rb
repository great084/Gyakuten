ActiveAdmin.register Text do
  permit_params :genre, :title, :contents, :image
  config.sort_order = "id_asc"

  index do
    selectable_column
    id_column
    column :genre
    column :title
    column :contents
    actions
  end

  show do
    attributes_table do
      row :genre
      row :title
      row :contents
      row :image do |r|
        if r.image.attached?
          image_tag url_for(r.image)
        end
      end
    end

  end

  form do |f|
    inputs  do
      input :genre, as: :select, collection: ['Basic', 'Ruby', 'Ruby on Rails', 'temporary image']
      input :title, as: :string
      input :contents
      input :image, as: :file
    end

    actions
  end

end
