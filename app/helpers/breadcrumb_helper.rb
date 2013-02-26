module BreadcrumbHelper
  
  def render_breadcrumbs(partial = 'rainbow/breadcrumb', divider = '/')
    s = render :partial => partial, :locals => { :divider => divider }
  end
  
end