class HomeController < ApplicationController
  def layout01_01
    if user_signed_in?
      if Interest.where(:id => current_user.id).blank?
        redirect_to '/home/layout01_05'
      else
        redirect_to '/home/layout02_01'
      end
    end
  end
  
  def layout01_02
          
  end
  
  def layout01_03
    
  end
  
  def layout01_04
    
  end
  
  def layout04_2
    
  end
  
  def layout01_05
  
  end
  
  def layout01_05_modify
    if Interest.where(:id => current_user.id).blank?
      db = Interest.new
      db.user_id = current_user.id
      db.age = params[:age]
      db.gender = params[:gender]
      db.major = params[:major]
      db.language = params[:language]
      db.grade = params[:grade]
      db.save
    else #이부분을 통해서 수정도 가능해 졌음. 단 id는 수정 못하게 했지!! 
      db = Interest.find(current_user.id)
      db.age = params[:age]
      db.gender = params[:gender]
      db.major = params[:major]
      db.language = params[:language]
      db.grade = params[:grade]
      db.save
    end
    render :text=>""
  end
  
  def layout01_06_modify
    if Interest.where(:id => current_user.id).blank?
      db = Interest.new
      db.user_id = current_user.id
      db.character = params[:character]
      db.face = params[:face]
      db.alcohol = params[:alcohol]
      db.home = params[:home]
      db.religion = params[:religion]
      db.save
    else #이부분을 통해서 수정도 가능해 졌음. 단 id는 수정 못하게 했지!! 
      db = Interest.find(current_user.id)
      db.character = params[:character]      
      db.face = params[:face]
      db.alcohol = params[:alcohol]
      db.home = params[:home]
      db.religion = params[:religion]
      db.save
    end
    render :text=>""
  end

  def layout01_07_modify
    if Interest.where(:id => current_user.id).blank?
      db = Interest.new
      db.user_id = current_user.id
      db.photo = params[:photo]
      db.save
    else #이부분을 통해서 수정도 가능해 졌음. 단 id는 수정 못하게 했지!! 
      db = Interest.find(current_user.id)
      db.photo = params[:photo]      
      db.save
    end
    redirect_to '/home/layout01_08'
  end
  
  def layout01_08_modify
    if Interest.where(:id => current_user.id).blank?
      db = Interest.new
      db.user_id = current_user.id
      db.what_friend = params[:what_friend]
      db.empty_time= params[:empty_time]
      db.hobby = params[:hobby]
      db.movie = params[:movie]
      db.book = params[:book]
      db.song = params[:song]
      db.myself = params[:myself]
      db.not_want = params[:not_want]
      db.save
    else #이부분을 통해서 수정도 가능해 졌음. 단 id는 수정 못하게 했지!! 
      db = Interest.find(current_user.id)
      db.what_friend = params[:what_friend]
      db.empty_time= params[:empty_time]
      db.hobby = params[:hobby]
      db.movie = params[:movie]
      db.book = params[:book]
      db.song = params[:song]
      db.myself = params[:myself]
      db.not_want = params[:not_want]
      db.save
    end
    render :text=>""
  end  
  
  def layout01_06
    
  end
  
  def layout01_07
    
  end
  
  def layout01_08
    
  end 
  
  def layout02_01
    @interest = Interest.where(:major => "경영", :religion => "불교").take
    @user = User.where(:id => @interest.id).take
  end
end
