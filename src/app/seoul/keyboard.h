/*
 * \brief  Keyboard manager
 * \author Markus Partheymueller
 * \author Alexander Boettcher
 * \date   2012-07-31
 */

/*
 * Copyright (C) 2012 Intel Corporation
 * Copyright (C) 2013-2024 Genode Labs GmbH
 *
 * This file is distributed under the terms of the GNU General Public License
 * version 2.
 *
 * The code is partially based on the Vancouver VMM, which is distributed
 * under the terms of the GNU General Public License version 2.
 *
 * Modifications by Intel Corporation are contributed under the terms and
 * conditions of the GNU General Public License version 2.
 */

#ifndef _KEYBOARD_H_
#define _KEYBOARD_H_


/* includes for I/O */
#include <base/env.h>
#include <input/event.h>
#include <input/keycodes.h>

#include <nul/motherboard.h>

namespace Seoul {
	class Keyboard;
}

class Seoul::Keyboard
{
	private:

		Motherboard   & _motherboard;
		unsigned        _flags { };
		unsigned        _last_keycode { };

		bool _map_keycode(unsigned &, bool);

	public:

		Keyboard(Motherboard &mb) : _motherboard(mb) { }

		void handle_keycode_press(unsigned keycode);
		void handle_keycode_release(unsigned keycode);
		void handle_repeat();
};

#endif /* _KEYBOARD_H_ */
