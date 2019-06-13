ActiveAdmin.register User do
  config.clear_action_items!
  menu priority:1

  scope :all, defalut: true

  filter :email, as: :string
  filter :name, as: :string
  filter :walletAddress, as: :string
  filter :majorId, laber: '전공', as: :select, collection: StaticMajor.all.map{ |major| ["#{major.title}", major.id] }

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :walletAddress
    column :majorId do |obj|
      obj.majorId.present? ? StaticMajor.find(obj.majorId).title : "-"
    end
    actions default: true
  end

  show do
    attributes_table do
      row :id
      row :name
      row :walletAddress
      row :majorId do |obj|
        obj.majorId.present? ? StaticMajor.find(obj.majorId).title : "-"
      end
      row :email
      row :createdDate
      row :lastModifiedDate
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :walletAddress
      f.input :majorId, as: :select, collection: StaticMajor.all.map{ |major| ["#{major.title}", major.id] }
      f.input :email
    end
    f.actions
  end

end
