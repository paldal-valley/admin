ActiveAdmin.register Post do
  config.clear_action_items!
  menu false

  member_action :delete, method: :post do
    Post.find(params[:id]).update(isDeleted: 1)
    params[:where].present? ? back_url = params[:where] : back_url = '/admin'
    redirect_to back_url, notice: "해당 게시물이 정상적으로 삭제처리 되었습니다."
  end

  member_action :delete_cancle, method: :post do
    Post.find(params[:id]).update(isDeleted: 0)
    params[:where].present? ? back_url = params[:where] : back_url = '/admin'
    redirect_to back_url, notice: "해당 게시물이 정상적으로 삭제취소처리 되었습니다."
  end

end
