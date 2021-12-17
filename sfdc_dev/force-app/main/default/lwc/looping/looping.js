import UserPreferencesHideChatterOnboardingSplash from '@salesforce/schema/User.UserPreferencesHideChatterOnboardingSplash';
import { LightningElement } from 'lwc';

export default class Looping extends LightningElement {
    carList = ["Ford","Audi","Maruti","Hyundai","Mercedes"]

    ceoList = [
        {
             id:1,
        company:"Apple",
           name:"Tim cook"
        },
        {
            id:2,
       company:"google",
          name:"Sundar Pichai",
       },
       {
        id:3,
   company:"Facebook",
      name:"Mark Zukerberg"
         },
         {
    id:4,
company:"Amazon",
  name:"Jeff Bezos"
        }
]
}