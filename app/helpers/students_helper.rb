module StudentsHelper

  def deny_access
    #flash[:notice] = 'Please sign in to access this page'
    redirect_to signin_path, :notice => 'Please sign in to access this page'
  end

  def signed_in?
    true if cookies[:okusa] == 'yep'
  end

  private

    def secret
      'lovehim'
    end

end
