using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace WpfFrm
{
    public class DataItem
    {

        public int ID { get; set; } = 1;
        public string Name { get; set; } = "Test";
    }

    public static class DataDemo
    {

        private static Collection<DataItem> _DataList = null;
        public static Collection<DataItem> DataList
        {
            get
            {
                if (_DataList == null)
                {
                    _DataList = InitDataList();
                }
                return _DataList;
            }
        }

        public static Collection<DataItem> InitDataList()
        {
            Collection<DataItem> lists = new Collection<DataItem>();
            for (int i = 0; i < 100; i++)
            {
                DataItem item = new DataItem();
                item.ID = i + 1;
                item.Name = "Test " + (i + 1);
                lists.Add(item);
            }
            return lists;
        }
    }

    public class QueryDataViewModel : INotifyPropertyChanged
    {
        #region[构造函数]
        public QueryDataViewModel(Collection<DataItem> dataList)
        {
            this._dataList = dataList;
            _queryCommand = new QueryDataCommand(this);
           // _queryCommand = new QueryDataCommand(this);
        }
        #endregion
        #region[变量]
        /// <summary>
        /// 查询的数据
        /// </summary>
        private Collection<DataItem> _dataList = null;

        /// <summary>
        /// 查询命令
        /// </summary>
        private ICommand _queryCommand = null;

        private string _searchText = string.Empty;
        /// <summary>
        /// 搜索结果
        /// </summary>
        private string _searchResult = string.Empty;

        #endregion

        #region 属性

        public ICommand QueryCommand
        {
            get
            {
                return _queryCommand;
            }
        }

        public string SearchResult
        {
            get { return _searchResult; }
            set
            {
                this._searchResult = value;
                if (this.PropertyChanged != null)
                {
                    this.PropertyChanged(this, new PropertyChangedEventArgs("SearchResult"));
                }
            }
        }
        /// <summary>
        /// 
        ///  收搜关键字
        /// </summary>
        public string SearchText
        {
            get { return this._searchText; }
            set
            {
                this._searchText = value;
                if (this.PropertyChanged != null)
                {
                    this.PropertyChanged(this, new PropertyChangedEventArgs("SearchText"));
                }
            }

        }
        #endregion

        /// <summary>
        /// 查询结果
        /// </summary>
        public void QueryData()
        {
            if (!string.IsNullOrEmpty(this.SearchText))
            {
                DataItem dataItem = null;
                foreach (var item in this._dataList)
                {
                    if (item.ID.ToString() == this.SearchText)
                    {
                        dataItem = item;
                        break;
                    }
                }

                if (dataItem != null)
                {
                    this.SearchResult = string.Format($"ID:{dataItem.ID} Name:{dataItem.Name} ");
                }

            }
        }
        public event PropertyChangedEventHandler PropertyChanged;
    }


    public class QueryDataCommand : ICommand
    {
        private QueryDataViewModel _queryDataViewModel;
        public QueryDataCommand(QueryDataViewModel queryDataViewModel)
        {
            this._queryDataViewModel = queryDataViewModel;
        }
        #region[ICommand 成员]
        public event EventHandler CanExecuteChanged
        {
            add { }
            remove { }
        }

        public bool CanExecute(object parameter)
        {
            return true;
        }

        public void Execute(object parameter)
        {
            this._queryDataViewModel.QueryData();
        }
        #endregion
    }

}
