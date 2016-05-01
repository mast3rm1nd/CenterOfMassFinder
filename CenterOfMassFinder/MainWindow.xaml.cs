using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CenterOfMassFinder
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Calculate_button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var leftWeight = double.Parse(LeftMass_textBox.Text);
                var rightWeight = double.Parse(RightMass_textBox.Text);

                var rodWeight = double.Parse(RodMass_textBox.Text);
                var rodLength = double.Parse(RodLength_textBox.Text);

                var totalWeight = leftWeight + rightWeight + rodWeight;

                var precision = 0.01;

                var dl = 0.001;
                var currentL = 0.0;
                double totalLeftSideWeight, totalRightSideWeight, weightsRelation, handsRelation;

                for (;;)
                {
                    totalLeftSideWeight = leftWeight + rodWeight * (currentL / rodLength);
                    totalRightSideWeight = totalWeight - totalLeftSideWeight;

                    weightsRelation = totalLeftSideWeight / totalRightSideWeight;

                    handsRelation = (rodLength - currentL) / currentL;

                    if (Math.Abs(weightsRelation - handsRelation) <= precision)
                    {
                        break;
                    }


                    currentL += dl;
                }


                Results_TextBox.Text = $"Balance point: {currentL:N2} from left." + Environment.NewLine;
                Results_TextBox.Text += $"Total left mass: {totalLeftSideWeight:N2}" + Environment.NewLine;
                Results_TextBox.Text += $"Total right mass: {totalRightSideWeight:N2}";
                //Results_TextBox.Text += $"Mass and hands relation: {weightsRelation:N2}";
            }
            catch
            {
                Results_TextBox.Text = "Invalid parameters.";
            }
        }
    }
}
