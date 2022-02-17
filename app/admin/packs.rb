ActiveAdmin.register Pack do

  index do
    selectable_column

    id_column

    column :image do |p|
            if p.image.attached?
               image_tag url_for(p.image), class: "small_img"
            else
               "표시할 이미지가 없습니다."
            end
          end
    column :product_name
    column :company_name
    column :desc

    actions
  end

  form do |f|
    f.inputs do
      f.input :image, as: :file
      f.input :product_name
      f.input :company_name
      f.input :desc
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :image do |p|
        if p.image.attached?
          image_tag url_for(p.image), class: "small_img"
        else
          "표시할 이미지가 없습니다."
        end
      end
      row :product_name
      row :company_name
      row :desc
    end
  end

end
