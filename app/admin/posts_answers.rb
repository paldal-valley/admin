ActiveAdmin.register PostsAnswer do
  config.clear_action_items!
  menu parent: "게시글목록", priority: 4

  scope :all, default: true
  scope :select_answer
  scope :unselect_answer

  filter :post_user_name, label: '작성자명', as: :string
  filter :post_user_email, label: '작성자 이메일', as: :string
  filter :posts_question_categoryId, label: '카테고리', as: :select, collection: -> {
    StaticPostsQuestionsType.all.collect{ |p| ["#{p.title}", p.id] }
  }
  filter :posts_question_post_title, label: '게시글명', as: :string
  filter :post_createdDate, label: '작성일', as: :date_range
  filter :isSelected, label: '채택여부', as: :select, collection: [["no", nil], ["yes", 1]]
  filter :post_isDeleted, label: '삭제여부', as: :select

  index do
    selectable_column
    id_column
    column :user do |obj|
      obj.postId.present? ? (link_to User.find(obj.post.userId).name, admin_user_path(obj.post.userId)) : ''
    end
    column :category do |obj|
      StaticPostsQuestionsType.find(PostsQuestion.find(obj.postId_Q).categoryId).title
    end
    column "질문" do |obj|
      link_to Post.find(PostsQuestion.find(obj.postId_Q).postId).title, admin_posts_question_path(obj.postId_Q)
    end
    column :content do |obj|
      obj.post.content.length > 10 ? (obj.post.content.slice(0, 10) + "...") : obj.post.content
    end
    column "채택상태" do |obj|
      obj.isSelected == 1 ? "완료" : "대기"
    end
    column "삭제여부" do |obj|
      obj.post.isDeleted
    end
    actions defaults: false do |obj|
      item '보기', admin_posts_answer_path(obj), class: 'member_link'
      if obj.post.isDeleted == "no"
        item '삭제', delete_admin_post_path(id: obj.postId, where: "/admin/posts_answers"), method: :post, class: 'member_link'
      else
        item '삭제취소', delete_cancle_admin_post_path(id: obj.postId, where: "/admin/posts_answers"), method: :post, class: 'member_link'
      end
    end
  end

  show do
    attributes_table do
      row :id
      row :user do |obj|
        link_to obj.post.user.name, admin_user_path(obj.post.userId)
      end
      row :category do |obj|
        StaticPostsQuestionsType.find(obj.posts_question.categoryId).title
      end
      row :title do |obj|
        link_to obj.posts_question.post.title, admin_posts_question_path(obj.postId_Q)
      end
      row :content do |obj|
        obj.post.content
      end
      row "채택상태" do |obj|
        obj.isSelected == 1 ? "완료" : "대기"
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
