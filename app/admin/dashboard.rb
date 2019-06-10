ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  page_action :index do
    @users = User.all.count
    @posts = Post.all.count
    @comments = Comment.all.count
    @question_accuracy = ((PostsAnswer.where(isSelected: 1).count.to_f / PostsQuestion.all.count.to_f) * 100).round(2) 
    @recent_users = User.find_recent_week
    @recent_posts = Post.find_recent_week
    @weekly_posts = Post.ransack(createdDate_gteq: (Date.today - 6), createdDate_lteq: Date.today).result().count
    @free_posts = PostsPlaza.ransack(createdDate_gteq: (Date.today - 6), createdDate_lteq: Date.today).result().count
    @question_posts = PostsQuestion.ransack(createdDate_gteq: (Date.today - 6), createdDate_lteq: Date.today).result().count
    @answer_posts = PostsAnswer.ransack(createdDate_gteq: (Date.today - 6), createdDate_lteq: Date.today).result().count
    @review_posts = PostsReview.ransack(createdDate_gteq: (Date.today - 6), createdDate_lteq: Date.today).result().count
    @hot_posts = Post.left_joins(:likes).group(:id).having('COUNT(likes.id) > 0').order('COUNT(likes.id) DESC')
  end

  content title: proc{ I18n.t("active_admin.dashboard") } do
    render "index" # render 처리로 html로 빼내어 작업하였습니다. _index.html.erb 참조
  end # content

end
