using LeieveTea.Data.DTOs;
using LeieveTea.Data.Entities;
using LeieveTeaSystem.DAL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeieveTeaSystem.BLL
{
    [DataObject]
    public class MenuController
    {
        #region CRUD
        [DataObjectMethod(DataObjectMethodType.Select)]
        public List<MenuItem> MenuItems_List()
        {
            using (var context = new LeieveContext())
            {
                var res = context.MenuItems;
                return res.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Insert, false)]
        public void Add_MenuItem (MenuItem item)
        {
            using (var context = new LeieveContext())
            {
                context.MenuItems.Add(item);
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Delete, false)]
        public void Delete_MenuItem(MenuItem item)
        {
            using (var context = new LeieveContext())
            {
                var existing = context.MenuItems.Find(item.MenuItemID);


                context.MenuItems.Remove(existing);
                context.SaveChanges();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Update, false)]
        public void Update_MenuItem(MenuItem item)
        {
            using (var context = new LeieveContext())
            {



                context.Entry(item).State = System.Data.Entity.EntityState.Modified;
                 context.SaveChanges();
            }
        }



        #endregion
        #region Place Order
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<CategoryDTO> MenuByCategory_list()
        {
            using(var context = new LeieveContext())
            {
                var resualt = from x in context.Categories
                              orderby x.Description
                              select new CategoryDTO
                              {
                                  Description = x.Description,
                                  MenuItems = from y in x.MenuItems
                                              orderby y.Description
                                              select new MenuItemPOCO
                                              {
                                                  Itemid = y.MenuItemID,
                                                  ItemDescription = y.Description,
                                                  Price = y.SellingPrice
                                              }
                              };
                return resualt.ToList();
            }
        }
        #endregion
    }
}
