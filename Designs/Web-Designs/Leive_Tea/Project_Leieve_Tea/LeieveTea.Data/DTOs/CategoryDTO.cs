using System.Collections.Generic;

namespace LeieveTea.Data.DTOs
{
    public class CategoryDTO
    {
        public string Description { get; set; }
        public IEnumerable<MenuItemPOCO> MenuItems { get; set; }
    }
}