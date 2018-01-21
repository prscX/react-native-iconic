using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Iconic.RNIconic
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNIconicModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNIconicModule"/>.
        /// </summary>
        internal RNIconicModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNIconic";
            }
        }
    }
}
