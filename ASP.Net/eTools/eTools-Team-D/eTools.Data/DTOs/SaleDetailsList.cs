﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace eTools.Data.DTOs
{
    public class SaleDetailsList
    {
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public int StockItemID { get; set; }
        public string Description { get; set; }
    }
}
