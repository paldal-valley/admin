ActiveAdmin.register User do
  menu priority:1

  scope :all, defalut: true

  index do
    selectable_column
    id_column
    column :name
    column :walletAddress
    column :majorId do |obj|
      obj.majorId.present? ? StaticMajor.find(obj.majorId).title : "-"
    end
    column :email
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

end
