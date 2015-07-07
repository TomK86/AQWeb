module ApplicationHelper

  def active_class(link_path)
    if current_page?(link_path)
      "active"
    elsif (link_path == "/services/*") &&
          ( current_page?("/services/gcp") ||
            current_page?("/services/iit") ||
            current_page?("/services/lab") ||
            current_page?("/services/part11") ||
            current_page?("/services/data") ||
            current_page?("/services/reporting") )
      "active"
    else
      ""
    end
  end

  def active_title
    if current_page?("/")
      ""
    elsif current_page?("/about")
      "About Us | "
    elsif current_page?("/contact")
      "Contact Information | "
    elsif current_page?("/services/gcp")
      "GCP Audits | "
    elsif current_page?("/services/iit")
      "Investigator Initiated Trials | "
    elsif current_page?("/services/lab")
      "Laboratory Audits | "
    elsif current_page?("/services/part11")
      "Electronic Systems and Part 11 | "
    elsif current_page?("/services/data")
      "Data and Documents | "
    elsif current_page?("/services/reporting")
      "Reporting | "
    else
      ""
    end
  end

end
