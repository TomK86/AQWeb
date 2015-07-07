module ApplicationHelper

  def active_class(link_path)
    if current_page?(link_path)
      "active"
    elsif (link_path == "/services/*") &&
          ( current_page?("/services/gcp") ||
            current_page?("/services/iit") ||
            current_page?("/services/glp") ||
            current_page?("/services/part11") ||
            current_page?("/services/data") ||
            current_page?("/services/reporting") ||
            current_page?("/services/strategic") )
      "active"
    else
      ""
    end
  end

  def active_title
    if current_page?("/")
      ""
    elsif current_page?("/about")
      " | About Us"
    elsif current_page?("/contact")
      " | Contact Information"
    elsif current_page?("/services/gcp")
      " | Good Clinical Practice Audits"
    elsif current_page?("/services/iit")
      " | Investigator Initiated Trials"
    elsif current_page?("/services/glp")
      " | Good Laboratory Practice Audits"
    elsif current_page?("/services/part11")
      " | Electronic Systems & Part 11"
    elsif current_page?("/services/data")
      " | Data & Documents"
    elsif current_page?("/services/reporting")
      " | Reporting"
    elsif current_page?("/services/strategic")
      " | Strategic Consulting"
    else
      ""
    end
  end

end
