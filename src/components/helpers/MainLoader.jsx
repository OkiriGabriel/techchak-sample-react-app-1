/* eslint-disable */
// eslint-disable-next-line
import React from 'react';

const MainLoader = () => {

    return (
        <div>
            <div className="suspense bg-white">

                <div className="suspense_image ui-text-center">
                
                        <span className='saidatech-loader white md onwhite'></span>
                </div>

            </div>
        </div>
    )

}

const popNetwork = () => {

    window.location.href = '/no-network'

}

export default { MainLoader, popNetwork };
