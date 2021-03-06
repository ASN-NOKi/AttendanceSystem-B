module AttendancesHelper
  
  # 出勤・退勤の登録ボタンの切替え
  def attendance_state(attendance)
    if Date.current == attendance.worked_on
      return "出勤" if attendance.started_at.nil?
      return "退勤" if attendance.started_at.present? && attendance.finished_at.nil?
    end
    
    return false
  end
  
  # 出・退勤時間を受け取り、在社時間を計算
  def working_times(start, finish)
    format("%.2f", (((finish - start) / 60) / 60.0))
  end
  
  
end
