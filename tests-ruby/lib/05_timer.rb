
  def time_string(seconds)
    hours = seconds / 3600
    minutes = (seconds % 3600) / 60
    seconds = seconds % 60
  
    # Formatage avec ajout de zéro si nécessaire
    format("%02d:%02d:%02d", hours, minutes, seconds)
  end