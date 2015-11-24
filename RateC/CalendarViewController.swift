//
//  CalendarViewController.swift
//  RateC
//
//  Created by Yin Hua on 21/11/2015.
//  Copyright © 2015 Yin Hua. All rights reserved.
//

import UIKit
import CVCalendar


class CalendarViewController: UIViewController,CVCalendarMenuViewDelegate, CVCalendarViewDelegate {

    @IBOutlet weak var menuView: CVCalendarMenuView!
    
    @IBOutlet weak var calendarView: CVCalendarView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //background color updates
        self.menuView.backgroundColor = UIColor.whiteColor()
        self.calendarView.backgroundColor = UIColor.whiteColor()
        
        
        self.menuView.delegate = self
        self.calendarView.delegate = self

        // Do any additional setup after loading the view.
    }
    func presentationMode() -> CalendarMode {
        return CalendarMode.MonthView
    }
    func firstWeekday() -> Weekday {
        return Weekday.Sunday
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        calendarView.commitCalendarViewUpdate()
        menuView.commitMenuViewUpdate()
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
