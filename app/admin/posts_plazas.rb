ActiveAdmin.register PostsPlaza do
  config.clear_action_items!
  menu parent: "게시글목록", priority: 1

  scope :all, defalut: true

  batch_action :destroy, priority: 1 do |ids|
    PostsPlaza.where(id: ids).find_each do |p|
      Post.find(p.postId).update(isDeleted: "yes")
    end
    redirect_to collection_path, notice: "해당 게시물들을 성공적으로 삭제하였습니다."
  end

  action_item :delete, only: :show do
    link_to '삭제하기', delete_admin_post_path(id: PostsPlaza.find(params[:id]).postId, where: "/admin/posts_plazas"), method: :post
  end

  filter :post_user_name, label: '작성자명', as: :string
  filter :post_user_email, label: '작성자 이메일', as: :string
  filter :categoryId, label: '카테고리', as: :select, collection: -> {
    StaticPostsPlazasType.all.collect{ |p| ["#{p.title}", p.id] }
  }
  filter :post_title, label: '게시글명', as: :string
  filter :post_createdDate, label: '작성일', as: :date_range
  filter :post_isDeleted, label: '삭제여부', as: :select

  index do
    selectable_column
    id_column
    column :user do |obj|
      obj.postId.present? ? (link_to User.find(obj.post.userId).name, admin_user_path(obj.post.userId)) : ''
    end
    column :category do |obj|
      StaticPostsPlazasType.find(obj.categoryId).title
    end
    column :title do |obj|
      obj.post.title
    end
    column :content do |obj|
      obj.post.content.length > 10 ? (obj.post.content.slice(0, 10) + "...") : obj.post.content
    end
    column :view do |obj|
      obj.post.view
    end
    column "삭제여부" do |obj|
      obj.post.isDeleted
    end
    actions defaults: false do |obj|
      item '보기', admin_posts_plaza_path(obj), class: 'member_link'
      if obj.post.isDeleted == "no"
        item '삭제', delete_admin_post_path(id: obj.postId, where: "/admin/posts_plazas"), method: :post, class: 'member_link'
      else
        item '삭제취소', delete_cancle_admin_post_path(id: obj.postId, where: "/admin/posts_plazas"), method: :post, class: 'member_link'
      end
    end
  end

  show do
    attributes_table do
      row :id
      row :user do |obj|
        obj.postId.present? ? (link_to User.find(obj.post.userId).name, admin_user_path(obj.post.userId)) : ''
      end
      row :category do |obj|
        StaticPostsPlazasType.find(obj.categoryId).title
      end
      row :title do |obj|
        obj.post.title
      end
      row :content do |obj|
        obj.post.content
      end
      row :view do |obj|
        obj.post.view
      end
      row "삭제여부" do |obj|
        obj.post.isDeleted
      end
      row :createdDate do |obj|
        obj.post.createdDate
      end
      row :lastModifiedDate do |obj|
        obj.post.lastModifiedDate
      end
    end
  end

end
