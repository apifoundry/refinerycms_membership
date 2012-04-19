::Refinery::Admin::BaseController.class_eval do
  def restrict_controller
    admin = refinery_user? || current_refinery_user.has_role?(:superuser)
#    if !admin || Refinery::Plugins.active.reject { |plugin| params[:controller] !~ Regexp.new(plugin.menu_match)}.empty?
#      warn "'#{current_refinery_user.username}' tried to access '#{params[:controller]}' but was rejected."
#      #
#      redirect_to '/' unless admin
#    end
    error_404 unless admin
  end
end